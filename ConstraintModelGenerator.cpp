//
// Created by aser on 6/8/17.
//

#include <cassert>
#include <algorithm>

#include "ConstraintModelGenerator.h"
#include "Solver.h"
#include "Executor.h"
#include "Thread.h"
#include "Action.h"
#include "Util.h"

using namespace std;
using namespace checker;

bool ConstModelGen::overlap(std::set<Action*> set1, std::set<Action*> set2)
{
    for( const auto& i : set1) {
        if(std::binary_search(set2.begin(), set2.end(), i))
            return true;
    }
    return false;
}

void ConstModelGen::initialize() {
    numLO = 0;
    numRW = 0;
    numB = 0;
    numPO = 0;
    numPC = 0;
    numUnkownVars = 0;
}

void ConstModelGen::addBinaryConstraints() {

    std::cout << "Adding Binary HB constraints: " << exe->get_formulaFile() << "\n";
    z3solver->writeLineZ3("(echo \"MEMORY-ORDER CONSTRAINTS -----\")\n");

    //count the total number of operations
    map<string, Thread*> tMap = exe->getThreadMap();
    for (map<string, Thread*>::iterator it = tMap.begin(); it != tMap.end(); it++) {
        vector<Action*> actionVec = it->second->getActionList();

        //if the list of operations has size > 1 then we must generate order constraints
        //for all the operations
        if (actionVec.size() > 1) {

            for(vector<Action*>::iterator opit = actionVec.begin(); opit != actionVec.end(); ++opit) {
                for(vector<Action*>::iterator opit2 = opit+1; opit2 != actionVec.end(); ++opit2) {
                    Action* a1 = *opit;
                    Action* a2 = *opit2;
                    string bRelName = a1->get_binary_rel_name(a2);
                    string declareVar = z3solver->declareIntOrderVarAndStore(bRelName, 1);
                    z3solver->writeLineZ3(declareVar);
                    numB++;
                }
            }
        }
        z3solver->threadIds.push_back(it->second->getName());  //add thread name to the set of threadIds
    }
    z3solver->setNumOps(numB);
    numUnkownVars += numB; //there is an unknown order variable per even
}

// add asw relations
void ConstModelGen::addASWRelation() {
    std::map<Action*, Action*> createPoints = exe->getCreatePoints();
    for (std::map<Action*, Action*>::iterator it = createPoints.begin();
         it != createPoints.end(); ++it) {
        Action* a1 = it->first;
        Action* a2 = it->second;

        //std::cout << "a2: " << a1 << " " << a2 << "\n";
        assert(a2 != NULL);

        set<Action*> hbList = solver->identifyMHBRelation(a1);
        set<Action*> haList = solver->identifyMHARelation(a2);

        for (set<Action*>::iterator it1 = hbList.begin();
                it1 != hbList.end(); ++it1) {
            Action* a1 = *it1;
            for (set<Action*>::iterator it2 = haList.begin();
                    it2 != haList.end(); ++it2) {
                Action* a2 = *it2;
                string bRelName = a1->get_binary_rel_name(a2);
                declareIntVar(bRelName);
                z3solver->writeLineZ3(z3solver->postAssert(z3solver->cEq(bRelName, "1")));
            }
        }
    }

    std::map<Action*, Action*> joinPoints = exe->getJoinPoints();
    for (std::map<Action*, Action*>::iterator it = joinPoints.begin();
            it != joinPoints.end(); ++it) {
        Action* a1 = it->first;
        Action* a2 = it->second;

        assert(a2 != NULL);

        set<Action*> hbList = solver->identifyMHBRelation(a2);
        set<Action*> haList = solver->identifyMHARelation(a1);

        for (set<Action*>::iterator it1 = hbList.begin();
                it1 != hbList.end(); ++it1) {
            Action* a1 = *it1;
            for (set<Action*>::iterator it2 = haList.begin();
                    it2 != haList.end(); ++it2) {
                Action* a2 = *it2;
                string bRelName = a1->get_binary_rel_name(a2);
                declareIntVar(bRelName);
                z3solver->writeLineZ3(z3solver->postAssert(z3solver->cEq(bRelName, "1")));
            }
        }

    }
}

void ConstModelGen::addSWConstraints() {
    /*std::map<Action*, Action*> swPairs = solver->getSWPairs();
    for (std::map<Action*, Action*>::iterator it = swPairs.begin();
            it != swPairs.end(); ++it) {
        Action* a1 = it->first;
        Action* a2 = it->second;

        set<Action*> mhbList = solver->identifyMHBRelation(a1);
        set<Action*> mhaList = solver->identifyMHARelation(a2);

        SWRelation* swRelation = new SWRelation(a1, a2);
        swRelation->setHBList(mhbList);
        swRelation->setHAList(mhaList);
        swRelations.insert(swRelation);
    }*/

    bool flag = true;
    while (flag) {
        flag = false;

        for (std::set<SWRelation *>::iterator it = swRelations.begin();
             it != swRelations.end(); ++it) {
            for (std::set<SWRelation *>::iterator it2 = swRelations.begin();
                 it2 != swRelations.end(); ++it2) {
                SWRelation *rel1 = *it;
                SWRelation *rel2 = *it2;

                if (rel1 == rel2) continue;

                std::set<Action *> list1 = rel1->getHBList();
                std::set<Action *> list2 = rel1->getHAList();
                std::set<Action *> list3 = rel2->getHBList();
                std::set<Action *> list4 = rel2->getHAList();

                if (overlap(list1, list4)) {
                    SWRelation *swRelation = new SWRelation(rel2->getFromAction(), rel1->getToAction());
                    if (rel1->getContained().size() == 0)
                        swRelation->addContained(rel1);
                    else
                        swRelation->addContained(rel1->getContained());

                    if (rel2->getContained().size() == 0)
                        swRelation->addContained(rel2);
                    else
                        swRelation->addContained(rel2->getContained());

                    string newPreCond = z3solver->cAnd(rel1->getPrecond(), rel2->getPrecond());
                    swRelation->setPreCond(newPreCond);

                    swRelation->setHBList(list3);
                    swRelation->setHAList(list2);
                    swRelations.insert(swRelation);
                    flag = true;
                } else if (overlap(list2, list3)) {
                    SWRelation *swRelation = new SWRelation(rel1->getFromAction(), rel2->getToAction());
                    if (rel1->getContained().size() == 0)
                        swRelation->addContained(rel1);
                    else
                        swRelation->addContained(rel1->getContained());

                    if (rel2->getContained().size() == 0)
                        swRelation->addContained(rel2);
                    else
                        swRelation->addContained(rel2->getContained());

                    string newPreCond = z3solver->cAnd(rel1->getPrecond(), rel2->getPrecond());
                    swRelation->setPreCond(newPreCond);

                    swRelation->setHBList(list1);
                    swRelation->setHAList(list4);
                    swRelations.insert(swRelation);
                    flag = true;
                }
            }
        }
    }

    // add asw relations
    /*std::map<Action*, Action*> createPoints = exe->getCreatePoints();
    for (std::map<Action*, Action*>::iterator it = createPoints.begin();
         it != createPoints.end(); ++it) {
        Action* a1 = it->first;
        Action* a2 = it->second;

        std::cout << a1->get_action_str() << " " << a1 << "\n";
        assert(a2 != NULL);

        std::cout << a1->get_action_str() << " " << a2->get_action_str() << "\n";

        set<Action*> mhbList = solver->identifyMHBRelation(a1);
        set<Action*> mhaList = solver->identifyMHARelation(a2);

        SWRelation* swRelation = new SWRelation(a1, a2);
        swRelation->setHBList(mhbList);
        swRelation->setHAList(mhaList);
        swRelation->setPreCond("true");
        swRelations.insert(swRelation);
    }*/

    for (set<SWRelation*>::iterator it = swRelations.begin();
            it != swRelations.end(); ++it) {
        SWRelation* swRelation = *it;
        Action* from = swRelation->getFromAction();
        Action* to = swRelation->getToAction();
        set<Action*> hbList = swRelation->getHBList();
        set<Action*> haList = swRelation->getHAList();
        vector<string> andStr;
        for (set<Action*>::iterator it1 = hbList.begin();
                it1 != hbList.end(); ++it1) {
            Action* a1 = *it1;
            for (set<Action*>::iterator it2 = haList.begin();
                    it2 != haList.end(); ++it2) {
                Action* a2 = *it2;
                string bRelName = a1->get_binary_rel_name(a2);
                declareIntVar(bRelName);
                andStr.push_back(z3solver->cEq(bRelName, "1"));
                //std::cout << "precond: " << swRelation->getPrecond() << "\n";
                string ite = z3solver->cIte(swRelation->getPrecond(), " 1", " 0");
                z3solver->writeLineZ3(z3solver->postAssert(z3solver->cEq(bRelName, ite)));
            }
        }

        /*string name = from->get_binary_rel_name(to);
        declareIntVar(name);
        string cond;
        set<SWRelation*> sws = swRelation->getContained();
        if (sws.size() == 0)
            cond = z3solver->cEq(name, "1");
        else {
            for (set<SWRelation *>::iterator swIt = sws.begin();
                 swIt != sws.end(); ++swIt) {
                SWRelation* sw = *swIt;
                Action* a = sw->getFromAction();
                Action* b = sw->getToAction();
                if (dynamic_cast<RWAction*>(a) && dynamic_cast<RWAction*>(b)) {
                    string tmp = a->get_binary_rel_name(b);
                    cond += " " + z3solver->cEq(tmp, "1");
                    string rfStr =
                    cond += " " + z3solver->cEq(b->get_rf_rel_name(a), "1");
                }
            }
        }*/

        //z3solver->writeLineZ3(z3solver->postAssert(z3solver->cIte(swRelation->getPrecond(), z3solver->cAnd(andStr))));
    }
    addASWRelation();
}

void ConstModelGen::addMOConstraints() {
    std::map<std::string, std::vector<RWAction*> > writeset = solver->getWriteSet();
    for (std::map<std::string, std::vector<RWAction*> >::iterator it = writeset.begin();
            it != writeset.end(); ++it) {
        std::vector<RWAction*> writeList = it->second;
        int max = writeList.size();

        //constraint to indicate that we want that each operation to have a unique global order
        string distinct = "(distinct ";
        for (std::vector<RWAction*>::iterator wIt = writeList.begin();
                wIt != writeList.end(); ++wIt) {
            RWAction* write = *wIt;
            string name = write->get_mo_constraint();
            string declareVar = z3solver->declareIntOrderVarAndStore(name, 0, max);
            z3solver->writeLineZ3(declareVar);
            distinct.append(" "+name);
        }
        distinct.append(")");
        //indicate that we want that each operation has its own global order
        z3solver->writeLineZ3(z3solver->postAssert(distinct));
    }
}

std::string ConstModelGen::addRWRelation(RWAction *read, uint64_t val) {
    std::string retStr = "";
    std::map<std::string, std::vector<RWAction*> > writeMap = solver->getWriteSet();
    std::vector<RWAction*> writeSet = writeMap[read->get_location_str()];

    string orStr = "";
    for (std::vector<RWAction*>::iterator it = writeSet.begin();
            it != writeSet.end(); ++it) {
        RWAction* write = *it;
        string andStr = "";
        if (write->get_value() == val) {
            string rfRelName = read->get_rf_rel_name(write);
            declareIntVar(rfRelName);
            andStr += " " + z3solver->cEq(rfRelName, "1");

            string bRelName = read->get_binary_rel_name(write);
            declareIntVar(bRelName);
            //if (read->get_mo() == memory_order_acquire && write->get_mo() == memory_order_release)
            if (isEnforceSWRelation(read, write)) {
                andStr += " " + z3solver->cEq(bRelName, "0");
                //solver->addSWPair(write, read);
            } else
                andStr += " " + z3solver->cNeq(bRelName, "1");

            for (std::vector<RWAction*>::iterator it2 = writeSet.begin();
                    it2 != writeSet.end(); ++it2) {
                RWAction* write2 = *it2;
                assert(read->get_location_str() == write->get_location_str() &&
                read->get_location_str() == write2->get_location_str());
                if (write == write2)
                    continue ;

                /*std::cout << "location: " << read->get_location_str() << " " << write->get_location_str() << " " << write2->get_location_str() << "\n";
                std::cout << "read: " << read->get_action_str() << "\n";
                std::cout << "write: " << write->get_action_str() << "\n";
                std::cout << "write2: " << write2->get_action_str() << "\n";*/
                string tmpStr = "";
                string bName1 = write->get_binary_rel_name(write2);
                declareIntVar(bName1);
                tmpStr = z3solver->cEq(bName1, "1");

                string bName2 = write2->get_binary_rel_name(read);
                declareIntVar(bName2);
                tmpStr += " " + z3solver->cEq(bName2, "1");
                tmpStr = z3solver->invertBugCondition(z3solver->cAnd(tmpStr));
                andStr += tmpStr;
            }
            orStr += " " + z3solver->cAnd(andStr);
        }
    }

    return z3solver->cOr(orStr);
}

void ConstModelGen::addRWRelations(std::map<RWAction *, uint64_t> pairs) {
    string andStr = "";
    for (std::map<RWAction*, uint64_t >::iterator it = pairs.begin();
            it != pairs.end(); ++it) {
        RWAction* read = it->first;
        uint64_t val = it->second;
        std::string tmpAndStr = addRWRelation(read, val);
        //std::cout << "ttt: " << tmpAndStr << "\n";
        andStr += " " + tmpAndStr;
    }

    andStr = z3solver->cAnd(andStr);
    z3solver->writeLineZ3(z3solver->postAssert(andStr));
    addSWConstraints();
}

std::string ConstModelGen::addRFRelation(RWAction *read, RWAction *write, int val) {
    string rfRelName = read->get_rf_rel_name(write);
    declareIntVar(rfRelName);
    return z3solver->cEq(rfRelName, "1");
}

void ConstModelGen::declareIntVar(std::string name) {
    string retStr = z3solver->declareIntVar(name);
    //std::cout << "declare: " << name << " " << retStr << "\n";
    if (retStr != "")
        z3solver->writeLineZ3(retStr);
}

bool ConstModelGen::isAcquireFence(FenceAction* fence) {
    memory_order mo = fence->get_mo();
    if (mo == memory_order_seq_cst || mo == memory_order_acquire || mo == memory_order_acq_rel)
        return  true;
    return false;
}

bool ConstModelGen::isReleaseFence(FenceAction* fence) {
    memory_order mo = fence->get_mo();
    if (mo == memory_order_seq_cst || mo == memory_order_release || mo == memory_order_acq_rel)
        return  true;
    return false;
}

bool ConstModelGen::isAcquire(RWAction* action) {
    memory_order mo = action->get_mo();
    if (mo == memory_order_seq_cst || mo == memory_order_acquire || mo == memory_order_acq_rel)
        return  true;
    return false;
}
bool ConstModelGen::isRelease(RWAction* action) {
    memory_order mo = action->get_mo();
    if (mo == memory_order_seq_cst || mo == memory_order_release || mo == memory_order_acq_rel)
        return  true;
    return false;
}

void ConstModelGen::enforeFenceAcquire(FenceAction* releaseF, RWAction* write,
                                       RWAction* read, RWAction* firstW, int writeNum) {
    SWRelation* sw = new SWRelation(releaseF, read);
    set<Action*> mhbList = solver->identifyMHBRelation(releaseF);
    set<Action*> mhaList = solver->identifyMHARelation(read);
    sw->setHBList(mhbList);
    sw->setHAList(mhaList);
    string rfRelName = read->get_rf_rel_name(write);
    string cond = " " + z3solver->cEq(rfRelName, "1");

    /*if (writeNum != 0) {
        string MO1 = read->get_mo_constraint();
        string MO2 = firstW->get_mo_constraint();
        declareIntVar(MO1);
        declareIntVar(MO2);

        string tmpCond = z3solver->cMinus(MO1, MO2);
        tmpCond = z3solver->cEq(tmpCond, util::stringValueOf(writeNum));
        cond = z3solver->cAnd(cond, tmpCond);
    }*/

    sw->setPreCond(cond);
    swRelations.insert(sw);
}

void ConstModelGen::enforeReleaseFence(FenceAction *acquireF, RWAction* write,
                                       RWAction* read, RWAction* firstW, int writeNum) {

    //std::cout << "\nIdentify a ReleaseFence!\n";
    SWRelation* sw = new SWRelation(firstW, acquireF);
    set<Action*> mhbList = solver->identifyMHBRelation(firstW);
    set<Action*> mhaList = solver->identifyMHARelation(acquireF);
    sw->setHBList(mhbList);
    sw->setHAList(mhaList);
    string rfRelName = read->get_rf_rel_name(write);
    string cond = " " + z3solver->cEq(rfRelName, "1");

    if (writeNum != 0) {
        string MO1 = read->get_mo_constraint();
        string MO2 = firstW->get_mo_constraint();
        declareIntVar(MO1);
        declareIntVar(MO2);

        string tmpCond = z3solver->cMinus(MO1, MO2);
        tmpCond = z3solver->cEq(tmpCond, util::stringValueOf(writeNum));
        cond = z3solver->cAnd(cond, tmpCond);
    }

    sw->setPreCond(cond);
    swRelations.insert(sw);
}

void ConstModelGen::enforeFenceFence(FenceAction* releaseF, FenceAction* acquireF,
                                     RWAction* write, RWAction* read, RWAction* firstW, int writeNum) {
    SWRelation* sw = new SWRelation(releaseF, acquireF);

    set<Action*> mhbList = solver->identifyMHBRelation(releaseF);
    set<Action*> mhaList = solver->identifyMHARelation(acquireF);
    sw->setHBList(mhbList);
    sw->setHAList(mhaList);
    string rfRelName = read->get_rf_rel_name(write);
    string cond = " " + z3solver->cEq(rfRelName, "1");

    /*if (writeNum != 0) {
        string MO1 = read->get_mo_constraint();
        string MO2 = firstW->get_mo_constraint();
        declareIntVar(MO1);
        declareIntVar(MO2);

        string tmpCond = z3solver->cMinus(MO1, MO2);
        tmpCond = z3solver->cEq(tmpCond, util::stringValueOf(writeNum));
        cond = z3solver->cAnd(cond, tmpCond);
    }*/

    sw->setPreCond(cond);
    swRelations.insert(sw);
}

void ConstModelGen::identifySWFence(RWAction* read, RWAction* write) {
    Thread* thr1 = write->get_thread();
    vector<Action*> list1 = thr1->getActionList();
    FenceAction* releaseF = NULL;
    FenceAction* acquireF = NULL;

    int writeNum = 0;
    RWAction* firstW = NULL;
    bool flag = false;
    for (int i=write->get_seq_number(); i>=0; --i) {
        Action* a = list1[i];
        if (!flag && dynamic_cast<RWAction*>(a) != NULL) {
            RWAction* tmpW = dynamic_cast<RWAction*>(a);
            if (tmpW->get_location() == write->get_location()) {
                writeNum++;
                firstW = tmpW;
                if (isRelease(tmpW))
                    flag = true;
            }
            continue ;
        }

        if (dynamic_cast<FenceAction*>(a) == NULL)
            continue ;
        FenceAction* fenceAction = dynamic_cast<FenceAction*>(a);
        if (isReleaseFence(fenceAction)) {
            releaseF = fenceAction;
            break;
        }
    }

    Thread* thr2 = read->get_thread();
    vector<Action*> list2 = thr2->getActionList();
    for (int i=read->get_seq_number(); i<list2.size(); ++i) {
        Action* a = list2[i];
        if (dynamic_cast<FenceAction*>(a) == NULL)
            continue;
        FenceAction* fenceAction = dynamic_cast<FenceAction*>(a);
        if (isAcquireFence(fenceAction)) {
            acquireF = fenceAction;
            break;
        }
    }

    std::cout << "\nFences: " << releaseF << " " << acquireF << " " << firstW << "\n";

    if (releaseF == NULL && acquireF == NULL)
        return ;
    else if (releaseF != NULL && acquireF == NULL && isAcquire(read)) {
        enforeFenceAcquire(releaseF, write, read, firstW, writeNum);
    } else if (releaseF == NULL && acquireF != NULL && firstW != NULL && isRelease(firstW)) {
        enforeReleaseFence(acquireF, write, read, firstW, writeNum);
    } else if (releaseF != NULL && acquireF != NULL) {
        enforeFenceFence(releaseF, acquireF, write, read, firstW, writeNum);
    }

    /*SWRelation* sw = new SWRelation(releaseF, acquireF);
    set<Action*> mhbList = solver->identifyMHBRelation(releaseF);
    set<Action*> mhaList = solver->identifyMHARelation(acquireF);
    sw->setHBList(mhbList);
    sw->setHAList(mhaList);
    string rfRelName = read->get_rf_rel_name(write);
    string cond = " " + z3solver->cEq(rfRelName, "1");

    if (writeNum != 0) {
        string MO1 = read->get_mo_constraint();
        string MO2 = firstW->get_mo_constraint();
        declareIntVar(MO1);
        declareIntVar(MO2);

        string tmpCond = z3solver->cMinus(MO1, MO2);
        tmpCond = z3solver->cEq(tmpCond, util::stringValueOf(writeNum));
        cond = z3solver->cAnd(cond, tmpCond);
    }

    sw->setPreCond(cond);
    swRelations.insert(sw);*/
}

// FIXME
bool ConstModelGen::isEnforceSWRelation(Action* a, Action* b) {
    if (dynamic_cast<RWAction*>(a) && dynamic_cast<RWAction*>(b)) {
        RWAction* read = dynamic_cast<RWAction*>(a);
        RWAction* write = dynamic_cast<RWAction*>(b);

        if (a->get_thread() == b->get_thread())
            return false;

        identifySWFence(read, write);

        memory_order rMO = read->get_mo();
        if (rMO != memory_order_acq_rel &&  rMO != memory_order_acquire
                && rMO != memory_order_seq_cst)
            return false;

        bool isWrite1 = read->is_write();
        bool isWrite2 = write->is_write();
        assert(!isWrite1 && isWrite2);

        Thread* thread = write->get_thread();
        vector<Action*> list = thread->getActionList();
        for (int i=write->get_seq_number(); i>=0; --i) {
            Action* tmp = list[i];
            if (dynamic_cast<RWAction*>(tmp) == NULL)
                continue ;

            RWAction* w = dynamic_cast<RWAction*>(tmp);
            if (w->get_location() != write->get_location())
                continue ;
            memory_order mo = w->get_mo();
            if (mo == memory_order_seq_cst || mo == memory_order_release ||
                    mo == memory_order_acq_rel) {
                SWRelation* sw = new SWRelation(w, read);
                set<Action*> mhbList = solver->identifyMHBRelation(w);
                set<Action*> mhaList = solver->identifyMHARelation(read);
                sw->setHBList(mhbList);
                sw->setHAList(mhaList);
                string rfRelName = read->get_rf_rel_name(write);
                string cond = " " + z3solver->cEq(rfRelName, "1");
                sw->setPreCond(cond);
                swRelations.insert(sw);
            }
            return true;
        }

        return false;
    }

    assert(false && "Not handle this case!\n");
    return false;
}

Action* ConstModelGen::getRelSeqHead(RWAction* write) {
    assert(write->is_write());

    Thread* thread = write->get_thread();

}

void ConstModelGen::enforeMOConsistent() {
    std::map<std::string, std::vector<RWAction*> > writeset = solver->getWriteSet();

    string andStr = "";
    for (std::map<std::string, std::vector<RWAction*> >::iterator it = writeset.begin();
            it != writeset.end(); ++it) {
        std::vector<RWAction*> writes = it->second;
        for (std::vector<RWAction*>::iterator wIt1 = writes.begin();
                wIt1 != writes.end(); ++wIt1) {
            RWAction *w1 = *wIt1;
            for (std::vector<RWAction*>::iterator wIt2 = writes.begin();
                    wIt2 != writes.end(); ++wIt2) {
                RWAction* w2 = *wIt2;

                if (w1 == w2) continue ;

                string bRelName = w1->get_binary_rel_name(w2);
                string moName1 = w1->get_mo_constraint();
                string moName2 = w2->get_mo_constraint();

                declareIntVar(bRelName);
                declareIntVar(moName1);
                declareIntVar(moName2);

                string cond = z3solver->cNeq(bRelName, "1");
                string result = z3solver->cLt(moName1, moName2);

                if (andStr == "")
                    andStr = z3solver->cOr(cond, result);
                else
                    andStr += " " + z3solver->cOr(cond, result);
            }
        }
    }

    z3solver->writeLineZ3(z3solver->postAssert(z3solver->cAnd(andStr)));
}

void ConstModelGen::enforeceConsistentConstraint() {
    enforeMOConsistent();
}
