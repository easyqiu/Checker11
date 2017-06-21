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

void ConstModelGen::addBasicConstraints() {

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

    int num = 0;
    for (map<string, Thread*>::iterator it1 = tMap.begin(); it1 != tMap.end(); it1++) {
        Thread* thread1 = it1->second;
        for (map<string, Thread*>::iterator it2 = tMap.begin(); it2 != tMap.end(); it2++) {
            Thread* thread2 = it2->second;
            if (thread1 == thread2) continue ;

            vector<Action*> list1 = thread1->getActionList();
            vector<Action*> list2 = thread2->getActionList();
            for (vector<Action*>::iterator aIt1 = list1.begin(); aIt1 != list1.end(); ++aIt1) {
                for (vector<Action*>::iterator aIt2 = list2.begin(); aIt2 != list2.end(); ++aIt2) {
                    Action* action1 = *aIt1;
                    Action* action2 = *aIt2;
                    string name1 = action1->get_binary_rel_name(action2);
                    string name2 = action2->get_binary_rel_name(action1);

                    declareIntVar(name1);
                    declareIntVar(name2);

                    string cond1 = z3solver->cAnd(z3solver->cEq(name1, "1"), z3solver->cEq(name2, "1"));
                    string cond2 = z3solver->cAnd(z3solver->cEq(name1, "0"), z3solver->cEq(name2, "0"));

                    // !(B_{ab}=1 ^ B_{ba}=1 V B_{ab}=0 ^ B_{ba}=0)
                    //std::cout << "xxxx: " << (z3solver->postAssert(z3solver->invertBugCondition(z3solver->cOr(cond1, cond2)))) << "\n";
                    string label = "Basic" + util::stringValueOf(num++);
                    z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->invertBugCondition(z3solver->cOr(cond1, cond2)), label));
                }
            }
        }
    }

    std::map<string, vector<RWAction*> > readset = solver->getReadSet();
    std::map<string, vector<RWAction*> > writeset = solver->getWriteSet();
    for (std::map<string, vector<RWAction*> >::iterator it = readset.begin();
            it != readset.end(); ++it) {
        vector<RWAction*> reads = it->second;
        vector<RWAction*> writes = writeset[it->first];

        for (vector<RWAction*>::iterator rIt = reads.begin();
                rIt != reads.end(); ++rIt) {

            string plusStr = "";
            RWAction* read = *rIt;
            for (vector<RWAction*>::iterator wIt = writes.begin();
                    wIt != writes.end(); ++wIt) {
                RWAction* write = *wIt;
                string rfName = read->get_rf_rel_name(write);
                declareIntVar(rfName);
                //string tmpStr = z3solver->cEq(rfName, "1");

                if (plusStr == "")
                    plusStr = rfName;
                else
                    plusStr = z3solver->cPlus(plusStr, rfName);
            }

            string label = "Basic" + util::stringValueOf(num++);
            z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cLeq(plusStr, "1"), label));
        }
    }
}

// add asw relations
void ConstModelGen::addASWRelation() {
    int num = 0;
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
                string label = "ASW" + util::stringValueOf(num++);
                z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cEq(bRelName, "1"), label));
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
                string label = "ASW" + util::stringValueOf(num++);
                z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cEq(bRelName, "1"), label));
            }
        }

    }
}

void ConstModelGen::printActionSet(set<Action*> list) {
    int i = 0;
    std::cout << "Print Actions: \n";
    for (set<Action*>:: iterator it = list.begin();
            it != list.end(); ++it) {
        Action* action = *it;
        std::cout << (i++) << ": " << action->get_uniq_name() << "\n";
    }
}

bool ConstModelGen::addSWConstraints() {
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

    std::cout << "Adding SW Constraints: " << swRelations.size() << "\n";
    bool flag = true;
    set<pair<SWRelation*, SWRelation*> > checkedPairs;
    while (flag) {
        flag = false;

        set<SWRelation*> tmpSet;
        for (std::set<SWRelation *>::iterator it = swRelations.begin();
             it != swRelations.end(); ++it) {
            for (std::set<SWRelation *>::iterator it2 = swRelations.begin();
                 it2 != swRelations.end(); ++it2) {
                SWRelation *rel1 = *it;
                SWRelation *rel2 = *it2;

                if (rel1 == rel2) continue;
                if (checkedPairs.find(std::make_pair(rel1, rel2)) != checkedPairs.end()) continue;

                checkedPairs.insert(std::make_pair(rel1, rel2));

                std::set<Action *> list1 = rel1->getHBList();
                std::set<Action *> list2 = rel1->getHAList();
                std::set<Action *> list3 = rel2->getHBList();
                std::set<Action *> list4 = rel2->getHAList();

                if (rel1->getFromAction()->get_thread() == rel2->getToAction()->get_thread())
                    continue ;

                if (overlap(list1, list4)) {

                    printActionSet(list1);
                    printActionSet(list2);
                    printActionSet(list3);
                    printActionSet(list4);

                    /*if (overlap(list2, list3)) {
                        //std::cout << "Identify inconsistency!\n";
                        //return false;   // identify inconsistency
                        continue ;
                    }*/

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
                    //swRelations.insert(swRelation);
                    tmpSet.insert(swRelation);
                    flag = true;
                    std::cout << "rels1: " << rel1 << " " << rel2 << "\n";

                } /*else if (overlap(list2, list3)) {
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
                    //swRelations.insert(swRelation);
                    tmpSet.insert(swRelation);
                    flag = true;
                    std::cout << "rels2: " << rel1 << " " << rel2 << "\n";
                }*/
            }
        }
        swRelations.insert(tmpSet.begin(), tmpSet.end());
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

    int num = 0;
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
                string label = "SWRelation" + util::stringValueOf(num++);
                z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cEq(bRelName, ite), label));
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

    std::cout << "End adding SW Constraints!\n";
    return true;
}

void ConstModelGen::addMOConstraints() {
    std::map<std::string, std::vector<RWAction*> > writeset = solver->getWriteSet();
    int num = 0;
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
        string label = "MO" + util::stringValueOf(num++);
        z3solver->writeLineZ3(z3solver->postNamedAssert(distinct, label));
    }
}

std::string ConstModelGen::guaranteeReachability(Action* action) {
    std::cout << "Gurantee begin: " << action->get_uniq_name() << "\n";

    string retStr = "";
    set<Action*> mhbList = solver->identifyMHBRelation(action);
    for (set<Action*>::iterator it = mhbList.begin();
            it != mhbList.end(); ++it) {
        Action* a = *it;
        RWAction* r = dynamic_cast<RWAction*>(a);
        if (r == NULL || r->is_write()) continue ;

        std::string tmpStr = addRWRelation(r, r->get_value());
        if (retStr == "")
            retStr = tmpStr;
        else
            retStr += " " + tmpStr;
    }

    std::cout << "Gurantee end: " << action->get_uniq_name() << "\n";
    return retStr;
}

std::string ConstModelGen::addRWRelation(RWAction *read, uint64_t val) {
    std::string retStr = "";
    std::map<std::string, std::vector<RWAction*> > writeMap = solver->getWriteSet();
    std::vector<RWAction*> writeSet = writeMap[read->get_location_str()];

    string orStr = "";
    std::cout << "\nxxxx read: " << read->get_uniq_name() << " " << read->get_value() << " " << val << "\n";
    for (std::vector<RWAction*>::iterator it = writeSet.begin();
            it != writeSet.end(); ++it) {
        RWAction* write = *it;
        string andStr = "";
        std::cout << "\nwrite: " << write->get_uniq_name() << " " << write->get_value() << "\n";
        if (write->get_value() == val) {
            string tmp = guaranteeReachability(write);
            if (tmp != "")
                andStr += " " + tmp;

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
            std::cout << "orStr: " << orStr << "\n";
        }
    }

    /*std::cout << "xxx: " << z3solver->cOr((orStr));
    if (orStr == "")
        std::cout << "ssss: " << read->get_uniq_name() << " " << val << " " << writeSet.size() << "\n";*/
    return z3solver->cOr(orStr);
}

bool ConstModelGen::addRWRelations(std::map<RWAction *, uint64_t> pairs) {
    string andStr = "";
    for (std::map<RWAction*, uint64_t >::iterator it = pairs.begin();
            it != pairs.end(); ++it) {
        RWAction* read = it->first;
        uint64_t val = it->second;
        std::string tmpAndStr = addRWRelation(read, val);
        std::cout << "ttt: " << tmpAndStr << "\n";
        if (tmpAndStr == "")
            std::cout << "eeeeeee: " << read->get_uniq_name() << " " << val << "\n";
        andStr += " " + tmpAndStr;
    }

    if (andStr != "")
        z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "RW"));
    return addSWConstraints();
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

void ConstModelGen::enforceFenceAcquire(FenceAction* releaseF, RWAction* write,
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

void ConstModelGen::enforceReleaseFence(FenceAction *acquireF, RWAction* write,
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

void ConstModelGen::enforceFenceFence(FenceAction* releaseF, FenceAction* acquireF,
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

void ConstModelGen::enforceLockSW(std::pair<LockAction*, LockAction*> pair1,
                                  std::pair<LockAction*, LockAction*> pair2) {
    LockAction* lock1 = pair1.first;
    LockAction* unlock1 = pair1.second;
    LockAction* lock2 = pair2.first;
    LockAction* unlock2 = pair2.second;

    SWRelation* sw1 = new SWRelation(unlock1, lock2);
    set<Action*> mhbList = solver->identifyMHBRelation(unlock1);
    set<Action*> mhaList = solver->identifyMHARelation(lock2);
    sw1->setHBList(mhbList);
    sw1->setHAList(mhaList);
    string rfRelName1 = unlock1->get_binary_rel_name(lock2);
    declareIntVar(rfRelName1);
    string cond1 = " " + z3solver->cEq(rfRelName1, "1");
    sw1->setPreCond(cond1);
    swRelations.insert(sw1);

    SWRelation* sw2 = new SWRelation(unlock2, lock1);
    set<Action*> mhbList2 = solver->identifyMHBRelation(unlock2);
    set<Action*> mhaList2 = solver->identifyMHARelation(lock1);
    sw1->setHBList(mhbList2);
    sw1->setHAList(mhaList2);
    string rfRelName2 = unlock2->get_binary_rel_name(lock1);
    declareIntVar(rfRelName2);
    string cond2 = " " + z3solver->cEq(rfRelName2, "1");
    sw2->setPreCond(cond2);
    swRelations.insert(sw2);
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
        enforceFenceAcquire(releaseF, write, read, firstW, writeNum);
    } else if (releaseF == NULL && acquireF != NULL && firstW != NULL && isRelease(firstW)) {
        enforceReleaseFence(acquireF, write, read, firstW, writeNum);
    } else if (releaseF != NULL && acquireF != NULL) {
        enforceFenceFence(releaseF, acquireF, write, read, firstW, writeNum);
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
                std::cout << "Add swRelation: " << sw << " " << w->get_uniq_name() << " " << read->get_uniq_name() << "\n";
                printActionSet(mhbList);
                printActionSet(mhaList);
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

void ConstModelGen::enforceMOConsistent() {
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

    if (andStr != "")
        z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "MOConsistent"));
}

void ConstModelGen::enforceRFConsistent() {
    std::map<std::string, std::vector<RWAction *> > readset = solver->getReadSet();
    std::map<std::string, std::vector<RWAction *> > writeset = solver->getWriteSet();

    // corf
    string andStr = "";
    for (std::map<std::string, std::vector<RWAction *> >::iterator it = readset.begin();
         it != readset.end(); ++it) {
        for (std::vector<RWAction *>::iterator rIt = it->second.begin();
             rIt != it->second.end(); ++rIt) {
            RWAction *read = *rIt;
            for (std::vector<RWAction *>::iterator wIt = writeset[it->first].begin();
                 wIt != writeset[it->first].end(); ++wIt) {
                RWAction *write = *wIt;
                string bRelName = read->get_binary_rel_name(write);
                string rfRelName = read->get_rf_rel_name(write);

                declareIntVar(bRelName);
                declareIntVar(rfRelName);

                string constraint = z3solver->cOr(z3solver->cNeq(rfRelName, "1"), z3solver->cNeq(bRelName, "1"));
                if (andStr == "")
                    andStr = constraint;
                else
                    andStr += " " + constraint;
            }
        }
    }
    if (andStr != "")
        z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORF"));

    // corr
    andStr = "";
    for (std::map<std::string, std::vector<RWAction *> >::iterator it = readset.begin();
         it != readset.end(); ++it) {
        std::vector<RWAction *> readVec = it->second;
        std::vector<RWAction *> writeVec = writeset[it->first];
        for (std::vector<RWAction *>::iterator rIt1 = readVec.begin();
             rIt1 != readVec.end(); rIt1++) {
            RWAction *read1 = *rIt1;
            for (std::vector<RWAction *>::iterator rIt2 = readVec.begin();
                 rIt2 != readVec.end(); ++rIt2) {
                RWAction *read2 = *rIt2;
                if (read1 == read2) continue;

                for (std::vector<RWAction *>::iterator wIt1 = writeVec.begin();
                     wIt1 != writeVec.end(); ++wIt1) {
                    RWAction *write1 = *wIt1;
                    for (std::vector<RWAction *>::iterator wIt2 = writeVec.begin();
                         wIt2 != writeVec.end(); ++wIt2) {
                        RWAction *write2 = *wIt2;
                        if (write1 == write2) continue;

                        string rfName1 = read1->get_rf_rel_name(write1);
                        string rfName2 = read2->get_rf_rel_name(write2);
                        string bfName = read1->get_binary_rel_name(read2);
                        string moName1 = write1->get_mo_constraint();
                        string moName2 = write2->get_mo_constraint();

                        declareIntVar(rfName1);
                        declareIntVar(rfName2);
                        declareIntVar(bfName);
                        declareIntVar(moName1);
                        declareIntVar(moName2);

                        string tmpAndStr = "";
                        tmpAndStr = z3solver->cEq(rfName1, "1") + " " + z3solver->cEq(rfName2, "1")
                                    + " " + z3solver->cEq(bfName, "1");
                        tmpAndStr = z3solver->cOr(z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr)),
                                                  z3solver->cLt(moName1, moName2));
                        if (andStr == "")
                            andStr = tmpAndStr;
                        else
                            andStr += " " + tmpAndStr;
                    }
                }
            }
        }
    }
    if (andStr != "")
        z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORR"));

    // corw & cowr
    andStr = "";          // for corw
    string andStr2 = ""; // for cowr
    for (std::map<std::string, std::vector<RWAction *> >::iterator it = readset.begin();
         it != readset.end(); ++it) {
        std::vector<RWAction *> readVec = it->second;
        std::vector<RWAction *> writeVec = writeset[it->first];
        for (std::vector<RWAction *>::iterator rIt1 = readVec.begin();
             rIt1 != readVec.end(); rIt1++) {
            RWAction *read1 = *rIt1;

            for (std::vector<RWAction *>::iterator wIt1 = writeVec.begin();
                 wIt1 != writeVec.end(); ++wIt1) {
                RWAction *write1 = *wIt1;
                for (std::vector<RWAction *>::iterator wIt2 = writeVec.begin();
                     wIt2 != writeVec.end(); ++wIt2) {
                    RWAction *write2 = *wIt2;
                    if (write1 == write2) continue;

                    // corw
                    string rfName = read1->get_rf_rel_name(write1);
                    string bName = read1->get_binary_rel_name(write2);
                    string moName1 = write1->get_mo_constraint();
                    string moName2 = write2->get_mo_constraint();

                    declareIntVar(rfName);
                    declareIntVar(bName);
                    declareIntVar(moName1);
                    declareIntVar(moName2);

                    string tmpAndStr = "";
                    tmpAndStr = z3solver->cEq(rfName, "1") + " " + z3solver->cEq(bName, "1");
                    tmpAndStr = z3solver->cOr(z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr)),
                                              z3solver->cLt(moName1, moName2));

                    if (andStr == "")
                        andStr = tmpAndStr;
                    else
                        andStr += " " + tmpAndStr;

                    // cowr
                    bName = write2->get_binary_rel_name(read1);
                    declareIntVar(bName);

                    tmpAndStr = "";
                    tmpAndStr = z3solver->cEq(rfName, "1") + " " + z3solver->cEq(bName, "1");
                    tmpAndStr = z3solver->cOr(z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr)),
                                              z3solver->cLt(moName2, moName1));

                    if (andStr2 == "")
                        andStr2 = tmpAndStr;
                    else
                        andStr2 += " " + tmpAndStr;
                }
            }
        }
    }
    if (andStr != "")
        z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORW"));
    if (andStr2 != "")
        z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWR"));

    // coww
    andStr = "";
    for (std::map<std::string, std::vector<RWAction *> >::iterator it = writeset.begin();
         it != writeset.end(); ++it) {
        std::vector<RWAction *> writeVec = it->second;

        for (std::vector<RWAction *>::iterator wIt1 = writeVec.begin();
             wIt1 != writeVec.end(); ++wIt1) {
            RWAction *write1 = *wIt1;
            for (std::vector<RWAction *>::iterator wIt2 = writeVec.begin();
                 wIt2 != writeVec.end(); ++wIt2) {
                RWAction *write2 = *wIt2;
                if (write1 == write2) continue;

                string bName = write1->get_binary_rel_name(write2);
                string moName1 = write1->get_mo_constraint();
                string moName2 = write2->get_mo_constraint();

                declareIntVar(bName);
                declareIntVar(moName1);
                declareIntVar(moName2);

                string tmpAndStr = z3solver->cOr(z3solver->cNeq(bName, "1"), z3solver->cLt(moName1, moName2));
                if (andStr == "")
                    andStr = tmpAndStr;
                else
                    andStr = " " + tmpAndStr;

            }
        }
    }
    if (andStr != "")
        z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "COWW"));
}

void ConstModelGen::addLockConstraints() {
    string andStr = "";
    std::map<std::string, std::vector<std::pair<LockAction*, LockAction*> > > lockset = solver->getLockset();
    std::cout << "In addLockConstraints: " << lockset.size() << "\n";
    for (std::map<std::string, std::vector<std::pair<LockAction*, LockAction*> > >::iterator
            it = lockset.begin(); it != lockset.end(); ++it) {
        std::vector<std::pair<LockAction*, LockAction*> > vec = it->second;
        for (std::vector<std::pair<LockAction*, LockAction*> >::iterator it1 = vec.begin();
                it1 != vec.end(); ++it1) {
            std::pair<LockAction*, LockAction*> pair1 = *it1;
            LockAction* lock1 = pair1.first;
            LockAction* unlock1 = pair1.second;
            for (std::vector<std::pair<LockAction*, LockAction*> >::iterator it2 = vec.begin();
                    it2 != vec.end(); ++it2) {
                std::pair<LockAction*, LockAction*> pair2 = *it2;
                LockAction* lock2 = pair2.first;
                LockAction* unlock2 = pair2.second;
                if (lock1->get_thread() == lock2->get_thread()) continue ;

                // for each two lock-unlock pairs (a, b) a < b || b < a
                string bName1 = unlock1->get_binary_rel_name(lock2);
                string bName2 = unlock2->get_binary_rel_name(lock1);
                declareIntVar(bName1);
                declareIntVar(bName2);

                std::cout << "lock pairs: " << lock1->get_uniq_name() << " " <<
                          unlock1->get_uniq_name() << " " << lock2->get_uniq_name() << " " << unlock2->get_uniq_name() << "\n";
                std::cout << "name: " << bName1 << " " << bName2 << "\n";

                string cond1 = z3solver->cEq(bName1, "1");
                string cond2 = z3solver->cEq(bName2, "1");
                if (andStr == "")
                    andStr = z3solver->cOr(cond1, cond2);
                else
                    andStr += " " + z3solver->cOr(cond1, cond2);

                enforceLockSW(pair1, pair2);
            }
        }
    }

    if (andStr != "") {
        std::cout << "qqqqqqqqq\n";
        z3solver->writeLineZ3("(echo \"Lock CONSTRAINTS -----\")\n");
        z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "Lock"));
    }
}

void ConstModelGen::enforceConsistentConstraint() {
    enforceMOConsistent();
    enforceRFConsistent();
}

void ConstModelGen::addSCConstraints() {

}
