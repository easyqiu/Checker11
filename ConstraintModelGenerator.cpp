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
#include "checker.hpp"
#include "Schedule.h"

using namespace std;
using namespace checker;

//#define DEBUG

ConstModelGen::~ConstModelGen() {
    for (std::set<SWRelation*>::iterator it = swRelations.begin();
            it != swRelations.end(); ++it)
        delete *it;
}

bool ConstModelGen::overlap(std::set<Action*> set1, std::set<Action*> set2)
{
    for( const auto & i : set1) {
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

std::string ConstModelGen::addBasicConstraints() {

    std::string constraint = "";
    std::cout << "Adding Binary HB constraints: " << exe->get_formulaFile() << "\n";
    //z3solver->writeLineZ3("(echo \"MEMORY-ORDER CONSTRAINTS -----\")\n");
    constraint = "(echo \"MEMORY-ORDER CONSTRAINTS -----\")\n\n";

    //count the total number of operations
    map<string, Thread*>& tMap = exe->getThreadMap();
    for (map<string, Thread*>::iterator it = tMap.begin(); it != tMap.end(); it++) {
        vector<Action*>& actionVec = it->second->getActionList();

        //if the list of operations has size > 1 then we must generate order constraints
        //for all the operations
        if (actionVec.size() > 1) {

            for(vector<Action*>::iterator opit = actionVec.begin(); opit != actionVec.end(); ++opit) {
                for(vector<Action*>::iterator opit2 = opit+1; opit2 != actionVec.end(); ++opit2) {
                    Action* a1 = *opit;
                    Action* a2 = *opit2;
                    bool flag;
                    string bRelName = a1->get_binary_rel_name(a2, flag);
                    string declareVar;
                    if (flag)
                        declareVar = z3solver->declareIntOrderVarAndStore(bRelName, 0);
                    else
                        declareVar = z3solver->declareIntOrderVarAndStore(bRelName, 1);

                    //z3solver->writeLineZ3(declareVar);
                    constraint += declareVar + "\n";
                    numB++;
                }
            }
        }
        z3solver->threadIds.push_back(it->second->getName());  //add thread name to the set of threadIds
    }
    z3solver->setNumOps(numB);
    numUnkownVars += numB; //there is an unknown order variable per even

    int num = 0;
    std::string andStr = "";
    /*for (map<string, Thread*>::iterator it1 = tMap.begin(); it1 != tMap.end(); it1++) {
        Thread* thread1 = it1->second;
        for (map<string, Thread*>::iterator it2 = it1; it2 != tMap.end(); it2++) {
            Thread* thread2 = it2->second;
            if (thread1 == thread2) continue ;

            vector<Action*> list1 = thread1->getActionList();
            vector<Action*> list2 = thread2->getActionList();
            for (vector<Action*>::iterator aIt1 = list1.begin(); aIt1 != list1.end(); ++aIt1) {
                for (vector<Action*>::iterator aIt2 = list2.begin(); aIt2 != list2.end(); ++aIt2) {
                    Action* action1 = *aIt1;
                    Action* action2 = *aIt2;

                    bool flag1, flag2;
                    string name1 = action1->get_binary_rel_name(action2, flag1);
                    string name2 = action2->get_binary_rel_name(action1, flag2);

                    declareIntVar(name1);
                    declareIntVar(name2);

                    string cond1 = z3solver->cAnd(z3solver->cEq(name1, "1"), z3solver->cEq(name2, "1"));
                    string cond2 = z3solver->cAnd(z3solver->cEq(name1, "0"), z3solver->cEq(name2, "0"));

                    // !(B_{ab}=1 ^ B_{ba}=1 V B_{ab}=0 ^ B_{ba}=0)
                    //std::cout << "xxxx: " << (z3solver->postAssert(z3solver->invertBugCondition(z3solver->cOr(cond1, cond2)))) << "\n";
                    if (andStr == "")
                        andStr = z3solver->invertBugCondition(z3solver->cOr(cond1, cond2));
                    else
                        andStr += " " + z3solver->invertBugCondition(z3solver->cOr(cond1, cond2));

                    //string label = "Basic" + util::stringValueOf(num++);
                    //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->invertBugCondition(z3solver->cOr(cond1, cond2)), label));
                }
            }
        }
    }
    z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "Basic0"));

    andStr = "";*/

    std::map<string, vector<RWAction*> >& readset = solver->getReadSet();
    std::map<string, vector<RWAction*> >& writeset = solver->getWriteSet();
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
                if (read == write) continue;

                // for optimization
                if (read->get_thread() == write->get_thread() &&
                        read->get_seq_number() < write->get_seq_number())
                    continue ;

                string rfName = read->get_rf_rel_name(write);
                std::string dec = declareIntVar2(rfName, 0, 1);
                if (dec != "")
                    constraint += dec + "\n";
                //string tmpStr = z3solver->cEq(rfName, "1");

                if (plusStr == "")
                    plusStr = rfName;
                else
                    plusStr = z3solver->cPlus(plusStr, rfName);
            }

            if (andStr == "")
                andStr = z3solver->cEq(plusStr, "1");
            else
                andStr += " " + z3solver->cEq(plusStr, "1");

            //string label = "Basic" + util::stringValueOf(num++);
            //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cLeq(plusStr, "1"), label));
        }
    }

    //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "Basic1"));
    constraint += z3solver->postNamedAssert(z3solver->cAnd(andStr), "Basic1") + "\n";

    return constraint;
}

// add asw relations
void ConstModelGen::addASWRelation() {
    int num = 0;
    std::map<Action*, Action*>& createPoints = exe->getCreatePoints();
    std::string andStr = "";
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
                bool flag;
                string bRelName = a1->get_binary_rel_name(a2, flag);
                declareIntVar(bRelName);
                //string label = "ASW" + util::stringValueOf(num++);
                std::string cond = z3solver->cEq(bRelName, "1");
                if (flag)
                    cond = z3solver->cEq(bRelName, "0");

                if (andStr == "")
                    andStr = cond;
                else
                    andStr += " " + cond;

                //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cEq(bRelName, "1"), label));
            }
        }
    }

    std::map<Action*, Action*>& joinPoints = exe->getJoinPoints();
    for (std::map<Action*, Action*>::iterator it = joinPoints.begin();
            it != joinPoints.end(); ++it) {
        Action* a1 = it->first;
        Action* a2 = it->second;

        //std::cout << "aaa: " << a1->get_uniq_name() << "\n";
        assert(a2 != NULL);

        set<Action*> hbList = solver->identifyMHBRelation(a2);
        set<Action*> haList = solver->identifyMHARelation(a1);

        for (set<Action*>::iterator it1 = hbList.begin();
                it1 != hbList.end(); ++it1) {
            Action* a1 = *it1;
            for (set<Action*>::iterator it2 = haList.begin();
                    it2 != haList.end(); ++it2) {
                Action* a2 = *it2;

                bool flag;
                string bRelName = a1->get_binary_rel_name(a2, flag);
                declareIntVar(bRelName);
                string label = "ASW" + util::stringValueOf(num++);

                std::string cond = z3solver->cEq(bRelName, "1");
                if (flag)
                    cond = z3solver->cEq(bRelName, "0");

                if (andStr == "")
                    andStr = cond;
                else
                    andStr += " " + cond;

                //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cEq(bRelName, "1"), label));
            }
        }
    }

    z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "ASW"));
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

set<Action*> ConstModelGen::filterActions(set<Action*> list) {
    set<Action*> newList;
    map<string, int64_t > maxIndex;
    for (set<Action*>::iterator it = list.begin(); it != list.end(); ++it) {
        string threadName = (*it)->get_thread()->getName();
        int64_t seqNum = (*it)->get_seq_number();
        if (maxIndex.find(threadName) == maxIndex.end())
            maxIndex[threadName] = seqNum;
        else if (maxIndex[threadName] < seqNum)
            maxIndex[threadName] = seqNum;
    }

    for (set<Action*>::iterator it = list.begin(); it != list.end(); ++it) {
        string threadName = (*it)->get_thread()->getName();
        int64_t seqNum = (*it)->get_seq_number();
        if (seqNum < maxIndex[threadName]) continue ;
        newList.insert(*it);
    }

    return newList;
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

#ifdef DEBUG
    std::cout << "Adding SW Constraints: " << swRelations.size() << "\n";
#endif

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

                std::set<Action *>& list1 = rel1->getHBList();
                std::set<Action *>& list2 = rel1->getHAList();
                std::set<Action *>& list3 = rel2->getHBList();
                std::set<Action *>& list4 = rel2->getHAList();

                if (rel1->getFromAction()->get_thread() == rel2->getToAction()->get_thread())
                    continue ;

                if (overlap(list1, list4)) {

                    if (rel1->getFromAction() == rel2->getFromAction())
                        continue ;

#ifdef DEBUG
                    std::cout << "from & to: " << rel1->getFromAction()->get_uniq_name() << " " <<
                              rel1->getToAction()->get_uniq_name() << " " <<
                              rel2->getFromAction()->get_uniq_name() << " " <<
                              rel2->getToAction()->get_uniq_name() << "\n";
#endif
                    /*printActionSet(list1);
                    printActionSet(list2);
                    printActionSet(list3);
                    printActionSet(list4);*/

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
#ifdef DEBUG
                    std::cout << "rels1: " << rel1 << " " << rel2 << " " << swRelation << "\n";
#endif

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
        set<Action*>& hbList = swRelation->getHBList();
        set<Action*>& haList = swRelation->getHAList();

        /*std::cout << "111111\n";
        set<Action*> hbList, haList;
        hbList.insert(from), haList.insert(to);
        std::cout << "22222\n";*/
        //vector<string> andStr;
        //std::cout << "add swrelation: " << swRelation << " " << hbList.size() << " " << haList.size() << "\n";
        //printActionSet(hbList);
        //printActionSet(haList);

        //set<Action*> newHBList = filterActions(hbList);
        //set<Action*> newHAList = filterActions(haList);

        string andCond = "";
        for (set<Action*>::iterator it1 = hbList.begin();
                it1 != hbList.end(); ++it1) {
            Action* a1 = *it1;
            for (set<Action*>::iterator it2 = haList.begin();
                    it2 != haList.end(); ++it2) {
                Action* a2 = *it2;

                bool flag;
                string bRelName = a1->get_binary_rel_name(a2, flag);
                declareIntVar(bRelName);

                std::string cond = z3solver->cEq(bRelName, "1");
                if (flag)
                    cond = z3solver->cEq(bRelName, "0");
                //andStr.push_back(cond);
                if (andCond == "")
                    andCond = cond;
                else
                    andCond += " " + cond;

                //std::cout << "precond: " << swRelation->getPrecond() << "\n";
                //string ite = z3solver->cIte(swRelation->getPrecond(), " 1", " 0");

                //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cOr(
                //        z3solver->invertBugCondition(swRelation->getPrecond()), cond), label));

                //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cEq(bRelName, ite), label));
                //std::cout << z3solver->postNamedAssert(z3solver->cEq(bRelName, ite), label) << "\n";
            }
        }

        string label = "SWRelation" + util::stringValueOf(num++);
        z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cOr(
                z3solver->invertBugCondition(swRelation->getPrecond()), z3solver->cAnd(andCond)), label));

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

#ifdef DEBUG
    std::cout << "End adding SW Constraints!\n";
#endif
    return true;
}

std::string ConstModelGen::addMOConstraints() {
    std::string constraint = "";
    std::string bConstraint = "";
    std::map<std::string, std::vector<RWAction*> >& writeset = solver->getWriteSet();
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
            //z3solver->writeLineZ3(declareVar);
            constraint += declareVar + "\n";
            distinct.append(" "+name);
            for (std::vector<RWAction*>::iterator wIt2 = writeList.begin();
                    wIt2 != writeList.end(); ++wIt2) {
                RWAction* write2 = *wIt2;
                if (write == write2) continue ;
                bool flag;
                std::string bName = write->get_binary_rel_name(write2, flag);
                std::string dec = declareIntVar2(bName);
                if (dec != "")
                    constraint += dec;
                if (bConstraint == "")
                    bConstraint = z3solver->cOr(z3solver->cEq(bName, "0"), z3solver->cEq(bName, "1"));
                else
                    bConstraint += " " + z3solver->cOr(z3solver->cEq(bName, "0"), z3solver->cEq(bName, "1"));
            }
        }
        distinct.append(")");
        //indicate that we want that each operation has its own global order
        string label = "MO" + util::stringValueOf(num++);
        //z3solver->writeLineZ3(z3solver->postNamedAssert(distinct, label));
        constraint += z3solver->postNamedAssert(distinct, label) + "\n";
    }

    return constraint + z3solver->postAssert(z3solver->cAnd(bConstraint));
}

std::map<std::pair<RWAction*, int64_t>, std::string> rwConstraints;
std::set<RWAction*> addedReads;
std::set<std::string> enforcedRFs;
std::string ConstModelGen::guaranteeReachability(std::map<RWAction*, int64_t> pairs,
        /*std::set<std::string> &enforcedRFs,*/
                                                 std::map<RWAction*, int64_t> parents, Action* action,
                                                 bool forRead) {

    //std::cout << "in guarante2222!\n";
    assert(dynamic_cast<RWAction*>(action));

    /*if (guaranteeStore.find(action) != guaranteeStore.end()) {
        //std::cout << "Hit guarantee cache: " << action->get_uniq_name() << " " << guaranteeStore[action] << "\n";
        return guaranteeStore[action];
    }*/
    /*RWAction* rwAction = dynamic_cast<RWAction*>(action);
    int64_t val = rwAction->get_value();
    if (dynamic_cast<RMWAction*>(rwAction))
        val = dynamic_cast<RMWAction*>(rwAction)->getReadValue();
    pairs[rwAction] = val;*/

    string retStr = "";

    std::vector<Action*> &loopDepActons = action->getLoopDepActions();

    Thread* thread = action->get_thread();
    //std::cout << "map: " << thread->getReachabilityMap().size() << " " << action->get_seq_number() << "\n";
    std::set<Action*> list = thread->getReachabilityMap(action->get_seq_number());
    //parents.clear();
    if (loopDepActons.size() == 0 && list.size() == 0) {
        guaranteeStore[action] = retStr;
        return retStr;
    }

    /*for (std::vector<Action*>::iterator it = loopDepActons.begin();
         it != loopDepActons.end(); ++it) {
        if (list.find(*it) == list.end()) {
            list.insert(*it);
            std::cout << "Add: " << action->get_uniq_name() << " " << (*it)->get_uniq_name() << "\n";
        }
    }*/

    if (dynamic_cast<RMWAction*>(action)) {
        if (forRead) {
        //if (pairs.find(dynamic_cast<RWAction*>(action)) != pairs.end()) {
            list.erase(action);
            //parents.erase(dynamic_cast<RWAction*>(action));
            //std::cout << "erase: " << action->get_uniq_name() << "\n";
        }
    }

#ifdef DEBUG
    std::cout << "Guarantee begin: " << action->get_uniq_name() << " " << list.size() << " " << forRead << "\n";
    for (std::set<Action*>::iterator it = list.begin(); it != list.end(); ++it)
        std::cout << "list: " << (*it)->get_uniq_name() << "\n";

#endif

    for (std::set<Action*>::iterator it = list.begin(); it != list.end(); ++it) {
        Action* a = *it;
        RWAction* r = dynamic_cast<RWAction*>(a);
        if (r == NULL) {
#ifdef DEBUG
            std::cout << "skip1: " << a->get_uniq_name() << "\n";
#endif
            continue;
        } else if (r->is_write() && dynamic_cast<RMWAction*>(r) == NULL) {
#ifdef DEBUG
            std::cout << "skip2: " << a->get_uniq_name() << "\n";
#endif
            continue;
        }

        int64_t readVal = r->get_value();
        if (RMWAction* rmwAction = dynamic_cast<RMWAction*>(r)) {
            if (pairs.find(r) != pairs.end()) {
                if (rmwAction->getReadValue() != pairs[r] && action != r) {
                    //consistency = false ;
#ifdef DEBUG
                    std::cout << "Guarantee end: " << action->get_uniq_name() << " " << r->get_uniq_name() << " Inconsistency from guarantee1!\n";
#endif
                    guaranteeStore[action] = z3solver->cEq("1", "0");
                    return z3solver->cEq("1", "0"); // return false
                }

                readVal = pairs[r];
            } else
                readVal = rmwAction->getReadValue();
        } else if (pairs.find(r) != pairs.end()) {
            if (readVal != pairs[r]) {
#ifdef DEBUG
                std::cout << "Guarantee end: " << action->get_uniq_name() << " " << r->get_uniq_name() << " Inconsistency from guarantee2!\n";
#endif
                guaranteeStore[action] = z3solver->cEq("1", "0");
                return z3solver->cEq("1", "0"); // return false
            }
        }

#ifdef DEBUG
        std::cout << "guarantee: " << r->get_uniq_name() << " " << readVal << "\n";
#endif

        if (parents.find(r) != parents.end() /*&& parents[r] != readVal*/) { // loop dependency
            std::cout << "EEEEEEEEEE!\n";
            if (parents[r] != readVal) {
                //std::cout << "Inconsistency from guarantee3: " << r->get_uniq_name() << "\n";
#ifdef DEBUG
                std::cout << "Guarantee end: " << action->get_uniq_name() << "Loop dependency from guarantee false: " << r->get_uniq_name() << "\n";
#endif
                guaranteeStore[action] = z3solver->cEq("1", "0");
                return z3solver->cEq("1", "0"); // return false
            } else {
                //guaranteeStore[action] = z3solver->cEq("1", "1");
#ifdef DEBUG
                std::cout << "Guarantee end: " << action->get_uniq_name() << "Loop dependency from guarantee true: " << r->get_uniq_name() << "\n";
#endif
                std:string tmpStr = z3solver->cEq("1", "1");
                if (retStr == "")
                    retStr = tmpStr;
                else
                    retStr += " " + tmpStr;

                continue ;
                //return z3solver->cEq("1", "1"); // return true
            }
        }
        //std::map<RWAction*, int64_t> newParents;
        std::string tmpStr = addRWRelation(pairs, parents, r, readVal);
        //pairs[r] = readVal;

        if (tmpStr == "") {
            retStr = z3solver->cEq("1", "0");
            break;
        }

        if (retStr == "") {
            retStr = tmpStr;
            /*retStr = z3solver->cEq("1", "0");
            break;*/
        } else
            retStr += " " + tmpStr;
    }

#ifdef DEBUG
    std::cout << "Guarantee end: " << action->get_uniq_name() << " " << retStr << "\n";
#endif
    //return z3solver->cAnd(retStr);
    guaranteeStore[action] = retStr;
    if (guaranteeStore.find(action) != guaranteeStore.end())
        assert(retStr == guaranteeStore[action]);
    return retStr;
}

std::string ConstModelGen::addRWRelation(std::map<RWAction*, int64_t> pairs,
                                         std::map<RWAction*, int64_t > parents, RWAction *read, int64_t val) {
    //addedReads.insert(read);

    //std::cout << "In addRWRelation: " << read->get_uniq_name() << "\n";
    std::pair<RWAction*, int64_t > p = std::make_pair(read, val);
    if (prefix.find(read) != prefix.end() &&
            rwConstraints.find(p) != rwConstraints.end()) {
        //std::cout << "Hit Cache1: " << read->get_uniq_name() << " " << val << "\n";
        return rwConstraints[p];
    } else if (tmpRWConstraint.find(p) != tmpRWConstraint.end()) {
        //std::cout << "Hit Cache2: " << read->get_uniq_name() << " " << val << "\n";
        return tmpRWConstraint[p];
    }

    //std::cout << "Not hit cache: " << read->get_uniq_name() << " " << val << "\n";
    assert(read->is_write() == false || dynamic_cast<RMWAction*>(read));
    parents[read] = val;

#ifdef DEBUG
    std::cout << "In addRWRelation: " << read->get_uniq_name() << " " << val << "\n";
#endif

    std::string retStr = "";
    //std::map<std::string, std::vector<RWAction*> > writeMap = solver->getWriteSet();
    std::vector<RWAction*>& writeSet = solver->getWriteSet(read->get_location_str());//writeMap[read->get_location_str()];

#ifdef DEBUG
    int64_t readVal = read->get_value();
    if (dynamic_cast<RMWAction*>(read))
        readVal = (dynamic_cast<RMWAction*>(read)->getReadValue());

    std::cout << "\nxxxx read: " << read->get_uniq_name() << " " << readVal << " " << val << "\n";
#endif

    string orStr = "";
    for (std::vector<RWAction*>::iterator it = writeSet.begin();
            it != writeSet.end(); ++it) {
        RWAction *write = *it;
        string andStr = "";
        int64_t writeVal = write->get_value();
        if (dynamic_cast<RMWAction *>(write))
            writeVal = (dynamic_cast<RMWAction *>(write))->getWriteValue();

#ifdef DEBUG
        std::cout << "\nwrite: " << write->get_uniq_name() << " " << writeVal << "\n";
#endif
    }

#ifdef DEBUG
    std::cout << "writeset: " << writeSet.size() << "\n";
#endif

    string reachRead = guaranteeReachability(pairs, parents, read, true);
    for (std::vector<RWAction*>::iterator it = writeSet.begin();
            it != writeSet.end(); ++it) {
        RWAction* write = *it;
        if ((write->get_thread() == read->get_thread() &&
                write->get_seq_number() > read->get_seq_number()) ||
                write == read) {
            //std::cout << "skip: " << write->get_uniq_name() << "\n";
            continue;
        }

        string andStr = "";
        int64_t writeVal = write->get_value();
        if (RMWAction* rmwAction = dynamic_cast<RMWAction*>(write)) {
            //writeVal = (dynamic_cast<RMWAction*>(write))->getWriteValue();
            int64_t inputVal;
            if (pairs.find(write) != pairs.end()) {
                inputVal = pairs[write];
                //std::cout << "InputVal1: " << write->get_uniq_name() << " " << inputVal << "\n";
            } else {
                inputVal = rmwAction->getReadValue();
                //std::cout << "InputVal2: " << write->get_uniq_name() << " " << inputVal << "\n";
            }

            if (CmpXchgAction* cmpAction = dynamic_cast<CmpXchgAction*>(rmwAction))
                writeVal = cmpAction->computeWriteValue(inputVal);
            else
                writeVal = rmwAction->computeWriteValue(inputVal);
        }

        //std::cout << "values: " << write->get_uniq_name() << " " << writeVal << " " << val << "\n";
        if (writeVal == val) {
#ifdef DEBUG
            std::cout << "\nwrite: " << write->get_uniq_name() << " " << writeVal << "\n";
#endif
            string tmp;
            if (dynamic_cast<RMWAction*>(read)) {
                std::cout << "For read: " << read->get_uniq_name() << "\n";
                tmp = reachRead;//guaranteeReachability(pairs, parents, read);
                if (!consistency) {
                    //consistency = false;
                    //std::cout << "Inconsistency!\n";
                    if (prefix.find(read) != prefix.end())
                        rwConstraints[p] = "";
                    else
                        tmpRWConstraint[p] = "";
                    return "";
                }

                if (tmp != "")
                    andStr += " " + z3solver->cAnd(tmp);
                if (tmp == "(= 1 0)") {
                    andStr = tmp;
                    orStr += " " + z3solver->cAnd(andStr);
                    continue ;
                }

            }

#ifdef DEBUG
            std::cout << "current orStr: " << orStr << "\n";
            std::cout << "For write: " << write->get_uniq_name() << "\n";
#endif
            tmp = guaranteeReachability(pairs, parents, write, false);
            //std::cout << "end guarantee!\n";

            if (!consistency) {
                //consistency = false;
                //std::cout << "Inconsistency!\n";
                if (prefix.find(read) != prefix.end())
                    rwConstraints[p] = "";
                else
                    tmpRWConstraint[p] = "";
                return "";
            }

            if (tmp != "")
                andStr += " " + z3solver->cAnd(tmp);
            if (tmp == "(= 1 0)") {
                    andStr = tmp;
                    orStr += " " + z3solver->cAnd(andStr);
                    continue ;
            }

            string rfRelName = read->get_rf_rel_name(write);
            declareIntVar(rfRelName, 0, 1);
            andStr += " " + z3solver->cEq(rfRelName, "1");
            enforcedRFs.insert(rfRelName);

            bool flag;
            string bRelName = read->get_binary_rel_name(write, flag);
            declareIntVar(bRelName);

            //if (read->get_mo() == memory_order_acquire && write->get_mo() == memory_order_release)
            std::cout << "before enforce!\n";
            bool swRel = isEnforceSWRelation(read, write);
            std::cout << "isEnforceSWRelation: " << read->get_uniq_name() << " " << write->get_uniq_name() << " " << swRel << "\n";

            if (false && swRel) {
                std::string cond = z3solver->cEq(bRelName, "0");
                if (flag)
                    cond = z3solver->cEq(bRelName, "1");

                andStr += " " + cond;
                //solver->addSWPair(write, read);
            } else {
                std::string cond = z3solver->cNeq(bRelName, "1");
                if (flag)
                    cond = z3solver->cNeq(bRelName, "0");

                andStr += " " + cond;
            }

            for (std::vector<RWAction*>::iterator it2 = writeSet.begin();
                    it2 != writeSet.end(); ++it2) {
                RWAction* write2 = *it2;
                assert(read->get_location_str() == write->get_location_str() &&
                read->get_location_str() == write2->get_location_str());
                if (write == write2 || read == write2) {
                    //std::cout << "skip write1: " << write2->get_uniq_name() << "\n";
                    continue;
                }

                if (write->get_thread() == write2->get_thread() && write->get_seq_number() > write2->get_seq_number()) {
                    //std::cout << "skip write2: " << write2->get_uniq_name() << "\n";
                    continue;
                }

                if (read->get_thread() == write2->get_thread() && read->get_seq_number() < write2->get_seq_number()) {
                    //std::cout << "skip write3: " << write2->get_uniq_name() << "\n";
                    continue;
                }

                if (read->get_thread() == write->get_thread() && read->get_thread() == write2->get_thread() &&
                        write2->get_seq_number() > write->get_seq_number() && write2->get_seq_number() < read->get_seq_number()) {
                    andStr = z3solver->cEq("1", "0");
                    break ;
                }

                //std::cout << "consider write: " << write2->get_uniq_name() << "\n";
                /*std::cout << "location: " << read->get_location_str() << " " << write->get_location_str() << " " << write2->get_location_str() << "\n";
                std::cout << "read: " << read->get_uniq_name() << "\n";
                std::cout << "write: " << write->get_uniq_name() << "\n";
                std::cout << "write2: " << write2->get_uniq_name() << "\n";*/
                string tmpStr = "";

                bool flag1;
                string bName1 = write->get_binary_rel_name(write2, flag1);
                declareIntVar(bName1);
                tmpStr = z3solver->cEq(bName1, "1");
                if (flag1)
                    tmpStr = z3solver->cEq(bName1, "0");

                bool flag2;
                string bName2 = write2->get_binary_rel_name(read, flag2);
                declareIntVar(bName2);

                string cond = z3solver->cEq(bName2, "1");
                if (flag2)
                    cond = z3solver->cEq(bName2, "0");

                tmpStr += " " + cond;
                tmpStr = z3solver->invertBugCondition(z3solver->cAnd(tmpStr));
                andStr += tmpStr;
            }
            orStr += " " + z3solver->cAnd(andStr);
            //std::cout << "orStr: " << orStr << "\n";
        }
    }

#ifdef DEBUG
    std::cout << "xxx: " << read->get_uniq_name() << " " << val << " " << z3solver->cOr((orStr)) << "\n";
#endif

    if (orStr == "") {
        //std::cout << "ssss: " << read->get_uniq_name() << " " << val << " " << writeSet.size() << "\n";
#ifdef DEBUG
        std::cout << "Identify inconsistency1!\n";
#endif
        //consistency = false;
        if (prefix.find(read) != prefix.end())
            rwConstraints[p] = "";
        else
            tmpRWConstraint[p] = "";
        return "";
    }

    retStr = z3solver->cOr(orStr);
    if (prefix.find(read) != prefix.end()) {
        /*if (rwConstraints.find(p) != rwConstraints.end()) {
            if (rwConstraints[p] != retStr) {
                std::cout << "xx0: " << read->get_uniq_name() << " " << val << "\n";
                std::cout << "xx1: " << rwConstraints[p] << "\n";
                std::cout << "xx2: " << retStr << "\n";
                assert(false);
            }
        }*/
        rwConstraints[p] = retStr;
    } else
        tmpRWConstraint[p] = retStr;
    return retStr;
}

 bool ConstModelGen::addRWRelations(std::map<RWAction*, int64_t> pairs,
                                    std::set<std::string> &enforcedRFSet) {
                                    //std::set<std::string> &binaryRelations) {
    string andStr = "";

     if (isFirst)
         rwConstraints.clear();

    enforcedRFs.clear();
    //addedReads.clear();

#ifdef DEBUG
     std::cout << "AddRWRelations: " << pairs.size() << "\n";
#endif

     for (std::map<RWAction*, int64_t >::iterator it = pairs.begin();
          it != pairs.end(); ++it) {
         RWAction* read = it->first;
         int64_t val = it->second;
         /*if (addedReads.find(read) != addedReads.end()) {
             std::cout << "skip because addedReads!\n";
             continue;
         }*/

         //std::set<RWAction*> relatedRWs;
         //relatedRWs.insert(read);

#ifdef DEBUG
         std::cout << "Add RW: " << read->get_uniq_name() << " " << val << "\n";
#endif
         //addedReads.clear();
         std::map<RWAction*, int64_t > parents;

         //tmpRWConstraint.clear();
         std::string tmpAndStr = addRWRelation(pairs, /*enforcedRFs,*/ parents, read, val);
         if (consistency == false) {
#ifdef DEBUG
             std::cout << "Inconsistency1!\n";
#endif
             return false;
         }

#ifdef DEBUG
         std::cout << "ttt: " << tmpAndStr << "\n";
#endif
         if (tmpAndStr == "") {
#ifdef DEBUG
             std::cout << "Inconsistency2!\n";
#endif

             //std::cout << "eeeeeee: " << read->get_uniq_name() << " " << val << "\n";
             //assert(false && "Identify an inconsistency");
             return false;
         }
         andStr += " " + tmpAndStr;
     }

     if (andStr != "") {
         z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "RW"));
         /*while (andStr.find("B_") != std::string::npos) {
             andStr = andStr.substr(andStr.find("B_"));
             string str = andStr.substr(0, andStr.find(" "));
             binaryRelations.insert(str);
             andStr = andStr.substr(andStr.find(" ")+1);
         }*/

         //std::cout << "RW: " << z3solver->postNamedAssert(z3solver->cAnd(andStr), "RW") << "\n";
     } else {
#ifdef DEBUG
         std::cout << "Inconsistency3!\n";
#endif
         return false;
     }
     //assert(false);

     enforcedRFSet = enforcedRFs;
     return addSWConstraints();
 }

std::string ConstModelGen::addRFRelation(RWAction *read, RWAction *write, int val) {
    string rfRelName = read->get_rf_rel_name(write);
    declareIntVar(rfRelName, 0, 1);
    return z3solver->cEq(rfRelName, "1");
}

void ConstModelGen::declareIntVar(std::string name) {
    string retStr = z3solver->declareIntVar(name);
    //std::cout << "declare: " << name << " " << retStr << "\n";
    if (retStr != "")
        z3solver->writeLineZ3(retStr);
}

std::string ConstModelGen::declareIntVar2(std::string name) {
    string retStr = z3solver->declareIntVar(name);
    //std::cout << "declare: " << name << " " << retStr << "\n";
    return retStr;
}

void ConstModelGen::declareIntVar(std::string name, int min, int max) {
    string retStr = z3solver->declareIntVar(name, min, max);
    //std::cout << "declare: " << name << " " << retStr << "\n";
    if (retStr != "")
        z3solver->writeLineZ3(retStr);
}

std::string ConstModelGen::declareIntVar2(std::string name, int min, int max) {
    string retStr = z3solver->declareIntVar(name, min, max);
    //std::cout << "declare: " << name << " " << retStr << "\n";
    return retStr;
}

void ConstModelGen::declareIntVarGE(std::string name, int min) {
    string retStr = z3solver->declareIntVarGE(name, min);
    //std::cout << "declare: " << name << " " << retStr << "\n";
    if (retStr != "")
        z3solver->writeLineZ3(retStr);
}

std::string ConstModelGen::declareIntVarGE2(std::string name, int min) {
    string retStr = z3solver->declareIntVarGE(name, min);
    //std::cout << "declare: " << name << " " << retStr << "\n";
    return retStr;
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
    mhaList.insert(read);
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

    std::cout << "gggg: " << read->get_uniq_name() << " " << write->get_uniq_name() << "\n";
    printActionSet(mhbList), printActionSet(mhaList);
}

void ConstModelGen::enforceReleaseFence(FenceAction *acquireF, RWAction* write,
                                       RWAction* read, RWAction* firstW, int writeNum) {

    //std::cout << "\nIdentify a ReleaseFence!\n";
    SWRelation* sw = new SWRelation(firstW, acquireF);
    set<Action*> mhbList = solver->identifyMHBRelation(firstW);
    mhbList.insert(firstW);
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

    std::cout << "gggg: " << read->get_uniq_name() << " " << write->get_uniq_name() << "\n";
    printActionSet(mhbList), printActionSet(mhaList);
}

void ConstModelGen::enforceReleaseAcquire(RWAction* write, RWAction* read) {
    SWRelation* sw = new SWRelation(write, read);

    set<Action*> mhbList = solver->identifyMHBRelation(write);
    mhbList.insert(write);
    set<Action*> mhaList = solver->identifyMHARelation(read);
    mhaList.insert(read);
    sw->setHBList(mhbList);
    sw->setHAList(mhaList);
    string rfRelName = read->get_rf_rel_name(write);
    string cond = " " + z3solver->cEq(rfRelName, "1");

    sw->setPreCond(cond);
    swRelations.insert(sw);

    std::cout << "gggg: " << read->get_uniq_name() << " " << write->get_uniq_name() << "\n";
    printActionSet(mhbList), printActionSet(mhaList);
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

    bool flag1;
    string rfRelName1 = unlock1->get_binary_rel_name(lock2, flag1);
    declareIntVar(rfRelName1);

    string cond1 = " " + z3solver->cEq(rfRelName1, "1");
    if (flag1)
        cond1 = " " + z3solver->cEq(rfRelName1, "0");

    sw1->setPreCond(cond1);
    swRelations.insert(sw1);

    //std::cout << "add sw: " << sw1 << "\n";
    //printActionSet(mhbList);
    //printActionSet(mhaList);

    SWRelation* sw2 = new SWRelation(unlock2, lock1);
    set<Action*> mhbList2 = solver->identifyMHBRelation(unlock2);
    set<Action*> mhaList2 = solver->identifyMHARelation(lock1);
    sw2->setHBList(mhbList2);
    sw2->setHAList(mhaList2);

    bool flag2;
    string rfRelName2 = unlock2->get_binary_rel_name(lock1, flag2);
    declareIntVar(rfRelName2);

    string cond2 = " " + z3solver->cEq(rfRelName2, "1");
    if (flag2)
        cond2 = " " + z3solver->cEq(rfRelName2, "0");

    sw2->setPreCond(cond2);
    swRelations.insert(sw2);

    //std::cout << "add sw: " << sw2 << "\n";
    //printActionSet(mhbList2);
    //printActionSet(mhaList2);
}

bool ConstModelGen::identifySWFence(RWAction* read, RWAction* write) {

    if (read->get_thread() == write->get_thread()) return false;

    if (isAcquire(read) && isRelease(write)) {
        enforceReleaseAcquire(write, read);
        return true;
    }

    Thread* thr1 = write->get_thread();
    vector<Action*>& list1 = thr1->getActionList();
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
    vector<Action*>& list2 = thr2->getActionList();
    std::cout << "sx: " << read->get_uniq_name() << " " << write->get_uniq_name() << " " << list1.size() << " " << list2.size() << "\n";
    for (int i=read->get_seq_number(); i<list2.size(); ++i) {
        Action* a = list2[i];
        FenceAction* fenceAction = dynamic_cast<FenceAction*>(a);
        if (fenceAction == NULL) {
            continue;
        }
        if (isAcquireFence(fenceAction)) {
            acquireF = fenceAction;
            break;
        }
    }

    std::cout << "\nFences: " << releaseF << " " << acquireF << " " << firstW << "\n";

    if (releaseF == NULL && acquireF == NULL)
        return false;
    else if (releaseF != NULL && acquireF == NULL && isAcquire(read)) {
        std::cout << "enforceFenceAcquire!\n";
        enforceFenceAcquire(releaseF, write, read, firstW, writeNum);
        return true;
    } else if (releaseF == NULL && acquireF != NULL && firstW != NULL && isRelease(firstW)) {
        enforceReleaseFence(acquireF, write, read, firstW, writeNum);
        return true;
    } else if (releaseF != NULL && acquireF != NULL) {
        enforceFenceFence(releaseF, acquireF, write, read, firstW, writeNum);
        return true;
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
    //std::cout << "In isEnforcesSWRelation: " << a->get_uniq_name() << " " << b->get_uniq_name() << "\n";
    if (dynamic_cast<RWAction*>(a) && dynamic_cast<RWAction*>(b)) {
        RWAction* read = dynamic_cast<RWAction*>(a);
        RWAction* write = dynamic_cast<RWAction*>(b);

        if (a->get_thread() == b->get_thread())
            return false;

        memory_order rMO = read->get_mo();
        /*if (rMO != memory_order_acq_rel &&  rMO != memory_order_acquire
                && rMO != memory_order_seq_cst)
            return false;*/

        return identifySWFence(read, write);
        //bool isWrite1 = read->is_write();
        //bool isWrite2 = write->is_write();
        //assert(!isWrite1 && isWrite2);

        Thread* thread = write->get_thread();
        vector<Action*>& list = thread->getActionList();
        for (int i=write->get_seq_number(); i>=0; --i) {
            Action* tmp = list[i];
            if (dynamic_cast<RWAction*>(tmp) == NULL)
                continue ;

            RWAction* w = dynamic_cast<RWAction*>(tmp);
            if (w->get_location() != write->get_location() || w->get_location() != read->get_location())
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
                //std::cout << "Add swRelation: " << sw << " " << w->get_uniq_name() << " " << read->get_uniq_name() << "\n";
                //printActionSet(mhbList);
                //printActionSet(mhaList);
                return true;
            }
        }

        return false;
    }

    assert(false && "Not handle this case!\n");
    return false;
}

Action* ConstModelGen::getRelSeqHead(RWAction* write) {
    assert(write->is_write());

    Thread* thread = write->get_thread();

    // FIXME: not implemented
    return NULL;
}

std::string ConstModelGen::enforceMOConsistent() {
    std::map<std::string, std::vector<RWAction*> >& writeset = solver->getWriteSet();

    string andStr = "";
    string retStr = "";
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

                bool flag;
                string bRelName = w1->get_binary_rel_name(w2, flag);
                string moName1 = w1->get_mo_constraint();
                string moName2 = w2->get_mo_constraint();

                string dec = declareIntVar2(bRelName);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(moName1);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(moName2);
                if (dec != "")
                    retStr += dec + "\n";

                string cond =  z3solver->cNeq(bRelName, "1");
                if (flag)
                    cond = z3solver->cNeq(bRelName, "0");

                string result = z3solver->cLt(moName1, moName2);

                if (andStr == "")
                    andStr = z3solver->cOr(cond, result);
                else
                    andStr += " " + z3solver->cOr(cond, result);
            }
        }
    }

    if (andStr != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "MOConsistent"));
        return retStr + z3solver->postNamedAssert(z3solver->cAnd(andStr), "MOConsistent");
    else
        return "";
}

double partTime1 = 0, partTime2 = 0;
std::string ConstModelGen::enforceRFConsistent() {
    std::map<std::string, std::vector<RWAction *> >& readset = solver->getReadSet();
    std::map<std::string, std::vector<RWAction *> >& writeset = solver->getWriteSet();

    string andStr = "", andStr2 = "";
    string retStr = "";
    /*for (std::map<std::string, std::vector<RWAction*> >::iterator it = writeset.begin();
            it != writeset.end(); ++it) {
        std::vector<RWAction*> writes = it->second;
        for (std::vector<RWAction*>::iterator wIt1 = writes.begin();
                wIt1 != writes.end(); ++wIt1) {
            RWAction *write1 = *wIt1;
            for (std::vector<RWAction*>::iterator wIt2 = writes.begin();
                    wIt2 != writes.end(); ++wIt2) {
                RWAction* write2 = *wIt2;

                if (write1 == write2) continue ;

                bool flag;
                string bRelName = write1->get_binary_rel_name(write2, flag);
                string moName1 = write1->get_mo_constraint();
                string moName2 = write2->get_mo_constraint();

                string dec = declareIntVar2(bRelName);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(moName1);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(moName2);
                if (dec != "")
                    retStr += dec + "\n";

                string cond =  z3solver->cNeq(bRelName, "1");
                if (flag)
                    cond = z3solver->cNeq(bRelName, "0");

                string result = z3solver->cLt(moName1, moName2);

                if (andStr == "")
                    andStr = z3solver->cOr(cond, result);
                else
                    andStr += " " + z3solver->cOr(cond, result);

                // for coww
                string tmpAndStr = z3solver->cOr(cond, z3solver->cLt(moName1, moName2));
                if (andStr2 == "")
                    andStr2 = tmpAndStr;
                else
                    andStr2 = " " + tmpAndStr;

            }
        }
    }
    if (andStr != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "MOConsistent"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "MOConsistent") + "\n";
    if (andStr2 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "COWW"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWW") + "\n";*/


    double bTime = clock();
    // corf
    andStr = "";
    for (std::map<std::string, std::vector<RWAction *> >::iterator it = readset.begin();
         it != readset.end(); ++it) {
        for (std::vector<RWAction *>::iterator rIt = it->second.begin();
             rIt != it->second.end(); ++rIt) {
            RWAction *read = *rIt;
            for (std::vector<RWAction *>::iterator wIt = writeset[it->first].begin();
                 wIt != writeset[it->first].end(); ++wIt) {
                RWAction *write = *wIt;

                bool flag;
                string bRelName = read->get_binary_rel_name(write, flag);
                string rfRelName = read->get_rf_rel_name(write);

                string dec = declareIntVar2(bRelName);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(rfRelName, 0, 1);
                if (dec != "")
                    retStr += dec + "\n";

                string cond = z3solver->cNeq(bRelName, "1");
                if (flag)
                    cond = z3solver->cNeq(bRelName, "0");

                string constraint = z3solver->cOr(z3solver->cNeq(rfRelName, "1"), cond);
                if (andStr == "")
                    andStr = constraint;
                else
                    andStr += " " + constraint;
            }
        }
    }
    if (andStr != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORF"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORF") + "\n";

    partTime1 += clock() - bTime;
    std::cout << "### Part1 Time: " << partTime1 / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";

    bTime = clock();
    // corr
    andStr = "";
    string andStr1 = "";
    andStr2 = "";
    string andStr3 = "", andStr4 = "";
    bool forWW, forRWW;
    for (std::map<std::string, std::vector<RWAction *> >::iterator it = readset.begin();
         it != readset.end(); ++it) {
        std::vector<RWAction *> readVec = it->second;
        std::vector<RWAction *> writeVec = writeset[it->first];

        forWW = true;
        for (std::vector<RWAction *>::iterator rIt1 = readVec.begin();
             rIt1 != readVec.end(); rIt1++) {
            RWAction *read1 = *rIt1;

            forRWW = true;
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

                        if (forWW) {
                            bool flag;
                            string bRelName = write1->get_binary_rel_name(write2, flag);
                            string moName1 = write1->get_mo_constraint();
                            string moName2 = write2->get_mo_constraint();

                            string dec = declareIntVar2(bRelName);
                            if (dec != "")
                                retStr += dec + "\n";
                            dec = declareIntVar2(moName1);
                            if (dec != "")
                                retStr += dec + "\n";
                            dec = declareIntVar2(moName2);
                            if (dec != "")
                                retStr += dec + "\n";

                            string cond =  z3solver->cNeq(bRelName, "1");
                            if (flag)
                                cond = z3solver->cNeq(bRelName, "0");

                            string result = z3solver->cLt(moName1, moName2);

                            if (andStr1 == "")
                                andStr1 = z3solver->cOr(cond, result);
                            else
                                andStr1 += " " + z3solver->cOr(cond, result);

                            // for coww
                            string tmpAndStr = z3solver->cOr(cond, z3solver->cLt(moName1, moName2));
                            if (andStr2 == "")
                                andStr2 = tmpAndStr;
                            else
                                andStr2 = " " + tmpAndStr;
                        }

                        if (forRWW) {
                            // corw
                            string rfName = read1->get_rf_rel_name(write1);

                            bool flag2;
                            string bName = read1->get_binary_rel_name(write2, flag2);
                            string cond = z3solver->cEq(bName, "1");
                            if (flag2)
                                cond = z3solver->cEq(bName, "0");

                            string moName1 = write1->get_mo_constraint();
                            string moName2 = write2->get_mo_constraint();

                            string dec = declareIntVar2(rfName, 0, 1);
                            if (dec != "")
                                retStr += dec + "\n";
                            dec = declareIntVar2(bName);
                            if (dec != "")
                                retStr += dec + "\n";
                            dec = declareIntVar2(moName1);
                            if (dec != "\n")
                                retStr += dec + "\n";
                            dec = declareIntVar2(moName2);
                            if (dec != "\n")
                                retStr += dec + "\n";

                            string tmpAndStr = "";
                            tmpAndStr = z3solver->cEq(rfName, "1") + " " + cond;
                            tmpAndStr = z3solver->cOr(z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr)),
                                                      z3solver->cLt(moName1, moName2));

                            if (andStr3 == "")
                                andStr3 = tmpAndStr;
                            else
                                andStr3 += " " + tmpAndStr;

                            // cowr
                            bName = write2->get_binary_rel_name(read1, flag2);
                            cond = z3solver->cEq(bName, "1");
                            if (flag2)
                                cond = z3solver->cEq(bName, "0");

                            dec = declareIntVar2(bName);
                            if (dec != "")
                                retStr += dec + "\n";

                            tmpAndStr = "";
                            tmpAndStr = z3solver->cEq(rfName, "1") + " " + cond;
                            tmpAndStr = z3solver->cOr(z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr)),
                                                      z3solver->cLt(moName2, moName1));

                            if (andStr4 == "")
                                andStr4 = tmpAndStr;
                            else
                                andStr4 += " " + tmpAndStr;
                        }

                        string rfName1 = read1->get_rf_rel_name(write1);
                        string rfName2 = read2->get_rf_rel_name(write2);

                        bool flag2;
                        string bfName = read1->get_binary_rel_name(read2, flag2);
                        string cond = z3solver->cEq(bfName, "1");
                        if (flag2)
                            cond = z3solver->cEq(bfName, "0");

                        string moName1 = write1->get_mo_constraint();
                        string moName2 = write2->get_mo_constraint();

                        string dec = declareIntVar2(rfName1, 0, 1);
                        if (dec != "")
                            retStr += dec + "\n";
                        dec = declareIntVar2(rfName2, 0, 1);
                        if (dec != "")
                            retStr += dec + "\n";
                        dec = declareIntVar2(bfName);
                        if (dec != "")
                            retStr += dec + "\n";
                        dec = declareIntVar2(moName1);
                        if (dec != "")
                            retStr += dec + "\n";
                        dec = declareIntVar2(moName2);
                        if (dec != "")
                            retStr += dec + "\n";

                        string tmpAndStr = "";
                        tmpAndStr = z3solver->cEq(rfName1, "1") + " " + z3solver->cEq(rfName2, "1")
                                    + " " + cond;
                        tmpAndStr = z3solver->cOr(z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr)),
                                                  z3solver->cLt(moName1, moName2));
                        if (andStr == "")
                            andStr = tmpAndStr;
                        else
                            andStr += " " + tmpAndStr;
                    }
                }

                forWW = false;
            }
            forRWW = false;
        }
    }
    if (andStr1 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "MOConsistent"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr1), "MOConsistent") + "\n";
    if (andStr2 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "COWW"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWW") + "\n";
    if (andStr != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORR"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORR") + "\n";
    if (andStr3 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORW"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr3), "CORW") + "\n";
    if (andStr4 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWR"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr4), "COWR") + "\n";

    partTime2 += clock() - bTime;
    std::cout << "### Part2 Time: " << partTime2 / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";

    // corw & cowr
    /*andStr = "";          // for corw
    andStr2 = ""; // for cowr
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

                    bool flag2;
                    string bName = read1->get_binary_rel_name(write2, flag2);
                    string cond = z3solver->cEq(bName, "1");
                    if (flag2)
                        cond = z3solver->cEq(bName, "0");

                    string moName1 = write1->get_mo_constraint();
                    string moName2 = write2->get_mo_constraint();

                    string dec = declareIntVar2(rfName, 0, 1);
                    if (dec != "")
                        retStr += dec + "\n";
                    dec = declareIntVar2(bName);
                    if (dec != "")
                        retStr += dec + "\n";
                    dec = declareIntVar2(moName1);
                    if (dec != "\n")
                        retStr += dec + "\n";
                    dec = declareIntVar2(moName2);
                    if (dec != "\n")
                        retStr += dec + "\n";

                    string tmpAndStr = "";
                    tmpAndStr = z3solver->cEq(rfName, "1") + " " + cond;
                    tmpAndStr = z3solver->cOr(z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr)),
                                              z3solver->cLt(moName1, moName2));

                    if (andStr == "")
                        andStr = tmpAndStr;
                    else
                        andStr += " " + tmpAndStr;

                    // cowr
                    bName = write2->get_binary_rel_name(read1, flag2);
                    cond = z3solver->cEq(bName, "1");
                    if (flag2)
                        cond = z3solver->cEq(bName, "0");

                    dec = declareIntVar2(bName);
                    if (dec != "")
                        retStr += dec + "\n";

                    tmpAndStr = "";
                    tmpAndStr = z3solver->cEq(rfName, "1") + " " + cond;
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
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORW"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORW") + "\n";
    if (andStr2 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWR"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWR") + "\n";*/

    /*
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

                bool flag2;
                string bName = write1->get_binary_rel_name(write2, flag2);
                string cond = z3solver->cNeq(bName, "1");
                if (flag2)
                    cond = z3solver->cNeq(bName, "0");

                string moName1 = write1->get_mo_constraint();
                string moName2 = write2->get_mo_constraint();

                string dec = declareIntVar2(bName);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(moName1);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(moName2);
                if (dec != "")
                    retStr += dec + "\n";

                string tmpAndStr = z3solver->cOr(cond, z3solver->cLt(moName1, moName2));
                if (andStr == "")
                    andStr = tmpAndStr;
                else
                    andStr = " " + tmpAndStr;

            }
        }
    }
    if (andStr != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "COWW"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "COWW") + "\n";*/

    return retStr;
}

std::string ConstModelGen::enforceRFConsistent_optimized() {
    std::map<std::string, std::vector<RWAction *> >& readset = solver->getReadSet();
    std::map<std::string, std::vector<RWAction *> >& writeset = solver->getWriteSet();

    double bTime = clock();
    string andStr = "", andStr2 = "";
    string retStr = "";
    for (std::map<std::string, std::vector<RWAction*> >::iterator it = writeset.begin();
            it != writeset.end(); ++it) {
        std::vector<RWAction*> writes = it->second;
        for (std::vector<RWAction*>::iterator wIt1 = writes.begin();
                wIt1 != writes.end(); ++wIt1) {
            RWAction *write1 = *wIt1;
            for (std::vector<RWAction*>::iterator wIt2 = writes.begin();
                    wIt2 != writes.end(); ++wIt2) {
                RWAction* write2 = *wIt2;

                if (write1 == write2) continue ;

                bool flag;
                string bRelName = write1->get_binary_rel_name(write2, flag);
                string moName1 = write1->get_mo_constraint();
                string moName2 = write2->get_mo_constraint();

                string dec = declareIntVar2(bRelName);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(moName1);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(moName2);
                if (dec != "")
                    retStr += dec + "\n";

                string cond =  z3solver->cNeq(bRelName, "1");
                if (flag)
                    cond = z3solver->cNeq(bRelName, "0");

                string result = z3solver->cLt(moName1, moName2);

                if (andStr == "")
                    andStr = z3solver->cOr(cond, result);
                else
                    andStr += " " + z3solver->cOr(cond, result);

                // for coww
                string tmpAndStr = z3solver->cOr(cond, z3solver->cLt(moName1, moName2));
                if (andStr2 == "")
                    andStr2 = tmpAndStr;
                else
                    andStr2 = " " + tmpAndStr;

            }
        }
    }
    if (andStr != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "MOConsistent"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "MOConsistent") + "\n";
    if (andStr2 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "COWW"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWW") + "\n";


    // corf
    andStr = "";
    for (std::map<std::string, std::vector<RWAction *> >::iterator it = readset.begin();
         it != readset.end(); ++it) {
        for (std::vector<RWAction *>::iterator rIt = it->second.begin();
             rIt != it->second.end(); ++rIt) {
            RWAction *read = *rIt;
            for (std::vector<RWAction *>::iterator wIt = writeset[it->first].begin();
                 wIt != writeset[it->first].end(); ++wIt) {
                RWAction *write = *wIt;

                bool flag;
                string bRelName = read->get_binary_rel_name(write, flag);
                string rfRelName = read->get_rf_rel_name(write);

                string dec = declareIntVar2(bRelName);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(rfRelName, 0, 1);
                if (dec != "")
                    retStr += dec + "\n";

                string cond = z3solver->cNeq(bRelName, "1");
                if (flag)
                    cond = z3solver->cNeq(bRelName, "0");

                string constraint = z3solver->cOr(z3solver->cNeq(rfRelName, "1"), cond);
                if (andStr == "")
                    andStr = constraint;
                else
                    andStr += " " + constraint;
            }
        }
    }
    if (andStr != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORF"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORF") + "\n";

    // corw & cowr
    andStr = "";          // for corw
    andStr2 = ""; // for cowr
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

                if (read1->get_thread() == write1->get_thread() &&
                        read1->get_seq_number() <= write1->get_seq_number())
                    continue ;

                for (std::vector<RWAction *>::iterator wIt2 = writeVec.begin();
                     wIt2 != writeVec.end(); ++wIt2) {
                    RWAction *write2 = *wIt2;
                    if (write1 == write2) continue;

                    // corw
                    string rfName = read1->get_rf_rel_name(write1);

                    bool flag2;
                    string bName = read1->get_binary_rel_name(write2, flag2);
                    string cond = z3solver->cEq(bName, "1");
                    if (flag2)
                        cond = z3solver->cEq(bName, "0");

                    string moName1 = write1->get_mo_constraint();
                    string moName2 = write2->get_mo_constraint();

                    string dec = declareIntVar2(rfName, 0, 1);
                    if (dec != "")
                        retStr += dec + "\n";
                    dec = declareIntVar2(bName);
                    if (dec != "")
                        retStr += dec + "\n";
                    dec = declareIntVar2(moName1);
                    if (dec != "\n")
                        retStr += dec + "\n";
                    dec = declareIntVar2(moName2);
                    if (dec != "\n")
                        retStr += dec + "\n";

                    string tmpAndStr = "";
                    tmpAndStr = z3solver->cEq(rfName, "1") + " " + cond;
                    tmpAndStr = z3solver->cOr(z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr)),
                                              z3solver->cLt(moName1, moName2));

                    if (andStr == "")
                        andStr = tmpAndStr;
                    else
                        andStr += " " + tmpAndStr;

                    // cowr
                    bName = write2->get_binary_rel_name(read1, flag2);
                    cond = z3solver->cEq(bName, "1");
                    if (flag2)
                        cond = z3solver->cEq(bName, "0");

                    dec = declareIntVar2(bName);
                    if (dec != "")
                        retStr += dec + "\n";

                    tmpAndStr = "";
                    tmpAndStr = z3solver->cEq(rfName, "1") + " " + cond;
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
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORW"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORW") + "\n";
    if (andStr2 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWR"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWR") + "\n";

    partTime1 += clock() - bTime;
    std::cout << "### Part1 Time: " << partTime1 / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";

    bTime = clock();
    // corr
    andStr = "";
    string andStr1 = "";
    andStr2 = "";
    string andStr3 = "", andStr4 = "";
    bool forWW, forRWW;
    for (std::map<std::string, std::vector<RWAction *> >::iterator it = readset.begin();
         it != readset.end(); ++it) {
        std::vector<RWAction *> readVec = it->second;
        std::vector<RWAction *> writeVec = writeset[it->first];

        forWW = true;
        for (std::vector<RWAction *>::iterator rIt1 = readVec.begin();
             rIt1 != readVec.end(); rIt1++) {
            RWAction *read1 = *rIt1;

            forRWW = true;

            for (std::vector<RWAction *>::iterator wIt1 = writeVec.begin();
                 wIt1 != writeVec.end(); ++wIt1) {
                RWAction *write1 = *wIt1;

                if (read1->get_thread() == write1->get_thread() &&
                        read1->get_seq_number() <= write1->get_seq_number())
                    continue ;

                for (std::vector<RWAction *>::iterator rIt2 = readVec.begin();
                     rIt2 != readVec.end(); ++rIt2) {
                    RWAction *read2 = *rIt2;
                    if (read1 == read2) continue;
                    if (read1->get_thread() == read2->get_thread() &&
                            read1->get_seq_number() > read2->get_seq_number())
                        continue ;

                    for (std::vector<RWAction *>::iterator wIt2 = writeVec.begin();
                         wIt2 != writeVec.end(); ++wIt2) {
                        RWAction *write2 = *wIt2;

                        if (read2->get_thread() == write2->get_thread() &&
                                read2->get_seq_number() <= write2->get_seq_number())
                            continue ;

                        if (write1 == write2) continue;

                        /*if (forWW) {
                            bool flag;
                            string bRelName = write1->get_binary_rel_name(write2, flag);
                            string moName1 = write1->get_mo_constraint();
                            string moName2 = write2->get_mo_constraint();

                            string dec = declareIntVar2(bRelName);
                            if (dec != "")
                                retStr += dec + "\n";
                            dec = declareIntVar2(moName1);
                            if (dec != "")
                                retStr += dec + "\n";
                            dec = declareIntVar2(moName2);
                            if (dec != "")
                                retStr += dec + "\n";

                            string cond =  z3solver->cNeq(bRelName, "1");
                            if (flag)
                                cond = z3solver->cNeq(bRelName, "0");

                            string result = z3solver->cLt(moName1, moName2);

                            if (andStr1 == "")
                                andStr1 = z3solver->cOr(cond, result);
                            else
                                andStr1 += " " + z3solver->cOr(cond, result);

                            // for coww
                            string tmpAndStr = z3solver->cOr(cond, z3solver->cLt(moName1, moName2));
                            if (andStr2 == "")
                                andStr2 = tmpAndStr;
                            else
                                andStr2 = " " + tmpAndStr;
                        }

                        if (forRWW) {
                            // corw
                            string rfName = read1->get_rf_rel_name(write1);

                            bool flag2;
                            string bName = read1->get_binary_rel_name(write2, flag2);
                            string cond = z3solver->cEq(bName, "1");
                            if (flag2)
                                cond = z3solver->cEq(bName, "0");

                            string moName1 = write1->get_mo_constraint();
                            string moName2 = write2->get_mo_constraint();

                            string dec = declareIntVar2(rfName, 0, 1);
                            if (dec != "")
                                retStr += dec + "\n";
                            dec = declareIntVar2(bName);
                            if (dec != "")
                                retStr += dec + "\n";
                            dec = declareIntVar2(moName1);
                            if (dec != "\n")
                                retStr += dec + "\n";
                            dec = declareIntVar2(moName2);
                            if (dec != "\n")
                                retStr += dec + "\n";

                            string tmpAndStr = "";
                            tmpAndStr = z3solver->cEq(rfName, "1") + " " + cond;
                            tmpAndStr = z3solver->cOr(z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr)),
                                                      z3solver->cLt(moName1, moName2));

                            if (andStr3 == "")
                                andStr3 = tmpAndStr;
                            else
                                andStr3 += " " + tmpAndStr;

                            // cowr
                            bName = write2->get_binary_rel_name(read1, flag2);
                            cond = z3solver->cEq(bName, "1");
                            if (flag2)
                                cond = z3solver->cEq(bName, "0");

                            dec = declareIntVar2(bName);
                            if (dec != "")
                                retStr += dec + "\n";

                            tmpAndStr = "";
                            tmpAndStr = z3solver->cEq(rfName, "1") + " " + cond;
                            tmpAndStr = z3solver->cOr(z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr)),
                                                      z3solver->cLt(moName2, moName1));

                            if (andStr4 == "")
                                andStr4 = tmpAndStr;
                            else
                                andStr4 += " " + tmpAndStr;
                        }*/

                        string rfName1 = read1->get_rf_rel_name(write1);
                        string rfName2 = read2->get_rf_rel_name(write2);

                        bool flag2;
                        string bfName = read1->get_binary_rel_name(read2, flag2);
                        string cond = z3solver->cEq(bfName, "1");
                        if (flag2)
                            cond = z3solver->cEq(bfName, "0");

                        string moName1 = write1->get_mo_constraint();
                        string moName2 = write2->get_mo_constraint();

                        string dec = declareIntVar2(rfName1, 0, 1);
                        if (dec != "")
                            retStr += dec + "\n";
                        dec = declareIntVar2(rfName2, 0, 1);
                        if (dec != "")
                            retStr += dec + "\n";
                        dec = declareIntVar2(bfName);
                        if (dec != "")
                            retStr += dec + "\n";
                        dec = declareIntVar2(moName1);
                        if (dec != "")
                            retStr += dec + "\n";
                        dec = declareIntVar2(moName2);
                        if (dec != "")
                            retStr += dec + "\n";

                        string tmpAndStr = "";
                        tmpAndStr = z3solver->cEq(rfName1, "1") + " " + z3solver->cEq(rfName2, "1")
                                    + " " + cond;
                        tmpAndStr = z3solver->cOr(z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr)),
                                                  z3solver->cLt(moName1, moName2));
                        if (andStr == "")
                            andStr = tmpAndStr;
                        else
                            andStr += " " + tmpAndStr;
                    }
                }

                forWW = false;
            }
            forRWW = false;
        }
    }
    /*if (andStr1 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "MOConsistent"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr1), "MOConsistent") + "\n";
    if (andStr2 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "COWW"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWW") + "\n";*/
    if (andStr != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORR"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORR") + "\n";
    /*if (andStr3 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORW"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr3), "CORW") + "\n";
    if (andStr4 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWR"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr4), "COWR") + "\n";*/

    partTime2 += clock() - bTime;
    std::cout << "### Part2 Time: " << partTime2 / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";


    // coww
    /*andStr = "";
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

                bool flag2;
                string bName = write1->get_binary_rel_name(write2, flag2);
                string cond = z3solver->cNeq(bName, "1");
                if (flag2)
                    cond = z3solver->cNeq(bName, "0");

                string moName1 = write1->get_mo_constraint();
                string moName2 = write2->get_mo_constraint();

                string dec = declareIntVar2(bName);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(moName1);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(moName2);
                if (dec != "")
                    retStr += dec + "\n";

                string tmpAndStr = z3solver->cOr(cond, z3solver->cLt(moName1, moName2));
                if (andStr == "")
                    andStr = tmpAndStr;
                else
                    andStr = " " + tmpAndStr;

            }
        }
    }
    if (andStr != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "COWW"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "COWW") + "\n";*/

    return retStr;
}

std::string ConstModelGen::enforceRFConsistent_optimized_and_shareWithPrefix(std::set<RWAction*> prefix) {
    std::map<std::string, std::vector<RWAction *> >& readset = solver->getReadSet();
    std::map<std::string, std::vector<RWAction *> >& writeset = solver->getWriteSet();

    std::cout << "prefix size: " << prefix.size() << "\n";
    double bTime = clock();
    string andStr = "", andStr2 = "";
    string retStr = "";
    for (std::map<std::string, std::vector<RWAction*> >::iterator it = writeset.begin();
            it != writeset.end(); ++it) {
        std::vector<RWAction*> writes = it->second;
        for (std::vector<RWAction*>::iterator wIt1 = writes.begin();
                wIt1 != writes.end(); ++wIt1) {
            RWAction *write1 = *wIt1;
            for (std::vector<RWAction*>::iterator wIt2 = writes.begin();
                    wIt2 != writes.end(); ++wIt2) {
                RWAction* write2 = *wIt2;

                if (write1 == write2) continue ;

                bool flag;
                string bRelName = write1->get_binary_rel_name(write2, flag);
                string moName1 = write1->get_mo_constraint();
                string moName2 = write2->get_mo_constraint();

                string dec = declareIntVar2(bRelName);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(moName1);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(moName2);
                if (dec != "")
                    retStr += dec + "\n";

                string cond =  z3solver->cNeq(bRelName, "1");
                if (flag)
                    cond = z3solver->cNeq(bRelName, "0");

                string result = z3solver->cLt(moName1, moName2);
                string ifCond = z3solver->cOr(cond, result);

                // for opt
                if (write1->get_thread() == write2->get_thread()) {
                    if (write1->get_seq_number() < write2->get_seq_number())
                        ifCond = result;
                    else
                        ifCond = z3solver->cLt(moName2, moName1);
                }

                if (andStr == "")
                    andStr = ifCond;
                else
                    andStr += " " + ifCond;

                // for opt
                //if (write1->get_thread() == write2->get_thread())
                //    continue ;

                // for coww
                string tmpAndStr = z3solver->cOr(cond, z3solver->cLt(moName1, moName2));
                if (andStr2 == "")
                    andStr2 = tmpAndStr;
                else
                    andStr2 += " " + tmpAndStr;
                std::cout << "cowww: " << andStr2 << "\n";

            }
        }
    }
    if (andStr != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "MOConsistent"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "MOConsistent") + "\n";
    if (andStr2 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "COWW"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWW") + "\n";


    // corf
    andStr = "";
    for (std::map<std::string, std::vector<RWAction *> >::iterator it = readset.begin();
         it != readset.end(); ++it) {
        for (std::vector<RWAction *>::iterator rIt = it->second.begin();
             rIt != it->second.end(); ++rIt) {
            RWAction *read = *rIt;
            for (std::vector<RWAction *>::iterator wIt = writeset[it->first].begin();
                 wIt != writeset[it->first].end(); ++wIt) {
                RWAction *write = *wIt;

                // for opt
                if (read->get_thread() == write->get_thread())
                    continue ;

                bool flag;
                string bRelName = read->get_binary_rel_name(write, flag);
                string rfRelName = read->get_rf_rel_name(write);

                string dec = declareIntVar2(bRelName);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(rfRelName, 0, 1);
                if (dec != "")
                    retStr += dec + "\n";

                string cond = z3solver->cNeq(bRelName, "1");
                if (flag)
                    cond = z3solver->cNeq(bRelName, "0");

                string constraint = z3solver->cOr(z3solver->cNeq(rfRelName, "1"), cond);

                if (andStr == "")
                    andStr = constraint;
                else
                    andStr += " " + constraint;
            }
        }
    }
    if (andStr != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORF"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORF") + "\n";

    // corw & cowr
    andStr = "";          // for corw
    andStr2 = ""; // for cowr
    for (std::map<std::string, std::vector<RWAction *> >::iterator it = readset.begin();
         it != readset.end(); ++it) {
        std::vector<RWAction *> readVec = it->second;
        std::vector<RWAction *> writeVec = writeset[it->first];
        for (std::vector<RWAction *>::iterator rIt1 = readVec.begin();
             rIt1 != readVec.end(); rIt1++) {
            RWAction *read1 = *rIt1;

            // for opt
            RWAction* nearestW = nearestPreviousWrite(read1); // the previous nearest write from read1

            for (std::vector<RWAction *>::iterator wIt1 = writeVec.begin();
                 wIt1 != writeVec.end(); ++wIt1) {
                RWAction *write1 = *wIt1;

                if (read1->get_thread() == write1->get_thread() &&
                        read1->get_seq_number() <= write1->get_seq_number())
                    continue ;

                // for opt
                std::set<RWAction*> wSetForCOWR, wSetForCORW;
                int i, j;
                i = j = -1;
                for (std::vector<RWAction*>::iterator wIt2 = writeVec.begin();
                        wIt2 != writeVec.end(); ++wIt2) {
                    RWAction* rwAction = *wIt2;
                    if (rwAction->get_thread() != read1->get_thread()) {
                        wSetForCOWR.insert(rwAction);
                        wSetForCORW.insert(rwAction);
                    } else if (rwAction->get_seq_number() < read1->get_seq_number()
                            && (rwAction->get_seq_number() > i || i == -1))
                        i = rwAction->get_seq_number();
                    else if (rwAction->get_seq_number() > read1->get_seq_number()
                            && (rwAction->get_seq_number() < j || j == -1))
                        j = rwAction->get_seq_number();
                }
                if (i != -1) wSetForCOWR.insert(dynamic_cast<RWAction*>(read1->get_thread()->getActionList()[i]));
                if (j != -1) wSetForCORW.insert(dynamic_cast<RWAction*>(read1->get_thread()->getActionList()[j]));

                for (std::vector<RWAction *>::iterator wIt2 = writeVec.begin();
                     wIt2 != writeVec.end(); ++wIt2) {
                    RWAction *write2 = *wIt2;
                    if (write1 == write2) continue;

                    // for opt
                    if (write1->get_thread() == write2->get_thread()) continue;
                    if (write1->get_thread() == read1->get_thread() &&
                            write1 != nearestW) {
                        continue;
                    }

                    // corw
                    string rfName = read1->get_rf_rel_name(write1);

                    bool flag2;
                    string bName = read1->get_binary_rel_name(write2, flag2);
                    string cond = z3solver->cEq(bName, "1");
                    if (flag2)
                        cond = z3solver->cEq(bName, "0");

                    // for opt
                    if (solver->checkMHB(read1, write2) == 1)
                        cond = z3solver->cEq("1", "1");
                    else if (solver->checkMHB(read1, write2) == 0)
                        cond = z3solver->cEq("1", "0");

                    string moName1 = write1->get_mo_constraint();
                    string moName2 = write2->get_mo_constraint();

                    string dec = declareIntVar2(rfName, 0, 1);
                    if (dec != "")
                        retStr += dec + "\n";
                    dec = declareIntVar2(bName);
                    if (dec != "")
                        retStr += dec + "\n";
                    dec = declareIntVar2(moName1);
                    if (dec != "\n")
                        retStr += dec + "\n";
                    dec = declareIntVar2(moName2);
                    if (dec != "\n")
                        retStr += dec + "\n";

                    string tmpAndStr = "";

                    if (wSetForCORW.find(write2) != wSetForCORW.end()) { // for opt
                        tmpAndStr = z3solver->cEq(rfName, "1") + " " + cond;

                        // for opt
                        if (solver->checkMHB(write1, write2) == 0)
                            tmpAndStr = z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr));
                        else
                            tmpAndStr = z3solver->cOr(z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr)),
                                                      z3solver->cLt(moName1, moName2));

                        if (andStr == "")
                            andStr = tmpAndStr;
                        else
                            andStr += " " + tmpAndStr;
                    }

                    // cowr
                    bName = write2->get_binary_rel_name(read1, flag2);
                    cond = z3solver->cEq(bName, "1");
                    // for opt
                    if (flag2)
                        cond = z3solver->cEq(bName, "0");// for opt

                    if (solver->checkMHB(write2, read1) == 1)
                        cond = z3solver->cEq("1", "1");
                    else if (solver->checkMHB(write2, read1) == 0)
                        cond = z3solver->cEq("1", "0");

                    dec = declareIntVar2(bName);
                    if (dec != "")
                        retStr += dec + "\n";

                    if (wSetForCOWR.find(write2) != wSetForCOWR.end()) { // for opt
                        tmpAndStr = "";
                        tmpAndStr = z3solver->cEq(rfName, "1") + " " + cond;

                        // for opt
                        if (solver->checkMHB(write2, write1) == 0)
                            tmpAndStr = z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr));
                        else
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
    }
    if (andStr != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORW"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORW") + "\n";
    if (andStr2 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWR"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWR") + "\n";

    partTime1 += clock() - bTime;
    std::cout << "### Part1 Time: " << partTime1 / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";

    bTime = clock();

    // corr
    //std::cout << "getting: " << andStr << "\n";
    string andStr1 = "";
    andStr2 = "";
    string andStr3 = "", andStr4 = "";

    andStr = exe->getCurSch()->getConsistentConstraint();
    string declares = exe->getCurSch()->getCommonDeclare();
    string newAndStr = andStr;
    retStr += declares;

    map<string, int> maxIndex;
    for (std::set<RWAction*>::iterator it = prefix.begin();
            it != prefix.end(); ++it) {
        string name = (*it)->get_thread()->getName();
        if (maxIndex.find(name) == maxIndex.end() ||
                maxIndex[name] < (*it)->get_seq_number()) {
            maxIndex[name] = (*it)->get_seq_number();
            //std::cout << "maxindex: " << name << " " << (*it)->get_seq_number() << "\n";
        }
    }

    bool forWW, forRWW;
    for (std::map<std::string, std::vector<RWAction *> >::iterator it = readset.begin();
         it != readset.end(); ++it) {
        std::vector<RWAction *> readVec = it->second;
        std::vector<RWAction *> writeVec = writeset[it->first];

#ifdef DEBUG
        std::cout << "reads & writes: " << readVec.size() << " " << writeVec.size() << "\n";
#endif
        forWW = true;
        for (std::vector<RWAction *>::iterator rIt1 = readVec.begin();
             rIt1 != readVec.end(); rIt1++) {
            RWAction *read1 = *rIt1;
            bool storeFlag1 = (maxIndex.find(read1->get_thread()->getName()) == maxIndex.end() ||
                    read1->get_seq_number() < maxIndex[read1->get_thread()->getName()]);
            //std::cout << "storeFlag1: " << storeFlag1 << " " << read1->get_uniq_name() << "\n";

            forRWW = true;

            // for opt
            RWAction* nearestW1 = nearestPreviousWrite(read1); // the previous nearest write from read1
            RWAction* nearestR1 = nearestPostRead(read1);

            for (std::vector<RWAction *>::iterator wIt1 = writeVec.begin();
                 wIt1 != writeVec.end(); ++wIt1) {
                RWAction *write1 = *wIt1;

                if (read1->get_thread() == write1->get_thread() &&
                        read1->get_seq_number() <= write1->get_seq_number())
                    continue ;

                // for opt
                if (read1->get_thread() == write1->get_thread() &&
                        write1 != nearestW1)
                    continue ;

                bool storeFlag2 = (maxIndex.find(write1->get_thread()->getName()) == maxIndex.end() ||
                        write1->get_seq_number() < maxIndex[write1->get_thread()->getName()]);
                //std::cout << "storeFlag2: " << storeFlag2 << " " << write1->get_uniq_name() << "\n";

                for (std::vector<RWAction *>::iterator rIt2 = readVec.begin();
                     rIt2 != readVec.end(); ++rIt2) {
                    RWAction *read2 = *rIt2;

                    if (read1 == read2) continue;
                    if (read1->get_thread() == read2->get_thread() &&
                            read1->get_seq_number() > read2->get_seq_number())
                        continue ;

                    // for opt
                    if (read1->get_thread() == read2->get_thread() &&
                            read2 != nearestR1) {
                        std::cout << "vvv111\n";
                        continue;
                    }

                    // for opt
                    RWAction* nearestW2 = nearestPreviousWrite(read2); // the previous nearest write from read1

                    bool storeFlag3 = (maxIndex.find(read2->get_thread()->getName()) == maxIndex.end() ||
                            read2->get_seq_number() < maxIndex[read2->get_thread()->getName()]);
                    //std::cout << "storeFlag3: " << storeFlag3 << " " << read2->get_uniq_name() << "\n";

                    for (std::vector<RWAction *>::iterator wIt2 = writeVec.begin();
                         wIt2 != writeVec.end(); ++wIt2) {
                        RWAction *write2 = *wIt2;

                        if (read2->get_thread() == write2->get_thread() &&
                                read2->get_seq_number() <= write2->get_seq_number())
                            continue ;

                        if (write1 == write2) continue;

                        // for opt
                        if (read2->get_thread() == write2->get_thread() &&
                            write2 != nearestW2)
                            continue ;
                        if (solver->checkMHB(write1, write2) == 1)
                            continue ;

                        /*if (exe->getCurSch()->inPrefix(std::make_pair(read1->get_thread()->getName(), read1->get_seq_number())) &&
                            exe->getCurSch()->inPrefix(std::make_pair(read2->get_thread()->getName(), read2->get_seq_number())) &&
                            exe->getCurSch()->inPrefix(std::make_pair(write1->get_thread()->getName(), write1->get_seq_number())) &&
                            exe->getCurSch()->inPrefix(std::make_pair(write2->get_thread()->getName(), write2->get_seq_number())))*/
                        if (exe->getCurSch()->inPrefix2(read1->getContextName()) &&
                                exe->getCurSch()->inPrefix2(read2->getContextName()) &&
                                exe->getCurSch()->inPrefix2(write1->getContextName()) &&
                                exe->getCurSch()->inPrefix2(write2->getContextName()))
                            continue ;

                        // for opt
                        if (write1->get_thread() == write2->get_thread())
                            continue;

                        bool storeFlag4 = (maxIndex.find(write2->get_thread()->getName()) == maxIndex.end() ||
                                write2->get_seq_number() < maxIndex[write2->get_thread()->getName()]);
                        //std::cout << "storeFlag4: " << storeFlag4 << " " << write2->get_uniq_name() << "\n";

                        bool storeFlag = (maxIndex.size() != 0) && storeFlag1 && storeFlag2 && storeFlag3 && storeFlag4;

                        string rfName1 = read1->get_rf_rel_name(write1);
                        string rfName2 = read2->get_rf_rel_name(write2);

                        bool flag2;
                        string bfName = read1->get_binary_rel_name(read2, flag2);
                        string cond = z3solver->cEq(bfName, "1");
                        if (flag2)
                            cond = z3solver->cEq(bfName, "0");
                        // for opt
                        if (solver->checkMHB(read1, read2) == 1)
                            cond = z3solver->cEq("1", "1");
                        else if (solver->checkMHB(read1, read2) == 0)
                            cond = z3solver->cEq("1", "0");

                        string moName1 = write1->get_mo_constraint();
                        string moName2 = write2->get_mo_constraint();

                        string dec = declareIntVar2(rfName1, 0, 1);
                        if (dec != "") {
                            retStr += dec + "\n";
                            if (storeFlag)
                                declares += dec + "\n";
                        }
                        dec = declareIntVar2(rfName2, 0, 1);
                        if (dec != "") {
                            retStr += dec + "\n";
                            if (storeFlag)
                                declares += dec + "\n";
                        }
                        dec = declareIntVar2(bfName);
                        if (dec != "") {
                            retStr += dec + "\n";
                            if (storeFlag)
                                declares += dec + "\n";
                        }
                        dec = declareIntVar2(moName1);
                        if (dec != "") {
                            retStr += dec + "\n";
                            if (storeFlag)
                                declares += dec + "\n";
                        }
                        dec = declareIntVar2(moName2);
                        if (dec != "") {
                            retStr += dec + "\n";
                            if (storeFlag)
                                declares += dec + "\n";
                        }

                        string tmpAndStr = "";
                        if (read1->get_thread() == read2->get_thread()) // for opt: now cond = true;
                            tmpAndStr = z3solver->cEq(rfName1, "1") + " " + z3solver->cEq(rfName2, "1");
                        else
                            tmpAndStr = z3solver->cEq(rfName1, "1") + " " + z3solver->cEq(rfName2, "1")
                                                                            + " " + cond;
                        // for opt
                        if (solver->checkMHB(write1, write2) == 0)
                            tmpAndStr = z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr));
                        else
                            tmpAndStr = z3solver->cOr(z3solver->invertBugCondition(z3solver->cAnd(tmpAndStr)),
                                                      z3solver->cLt(moName1, moName2));

                        if (andStr == "")
                            andStr = tmpAndStr;
                        else
                            andStr += " " + tmpAndStr;

                        if (storeFlag) {
                            //std::cout << "RRRR: " << tmpAndStr << "\n";
                            if (newAndStr == "")
                                newAndStr = tmpAndStr;
                            else
                                newAndStr += " " + tmpAndStr;
                        }
                    }
                }

                forWW = false;
            }
            forRWW = false;
        }
    }
    /*if (andStr1 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "MOConsistent"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr1), "MOConsistent") + "\n";
    if (andStr2 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "COWW"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWW") + "\n";*/
    if (andStr != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORR"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORR") + "\n";
    /*if (andStr3 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "CORW"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr3), "CORW") + "\n";
    if (andStr4 != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr2), "COWR"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr4), "COWR") + "\n";*/

    solver->setConsistentConstraint(newAndStr);
    solver->setCommonDeclare(declares);
    //std::cout << "setting: " << andStr << "\n";

    partTime2 += clock() - bTime;
    std::cout << "### Part2 Time: " << partTime2 / double(CLOCKS_PER_SEC) << " " << (clock()-bTime) / double(CLOCKS_PER_SEC) << "\n";


    // coww
    /*andStr = "";
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

                bool flag2;
                string bName = write1->get_binary_rel_name(write2, flag2);
                string cond = z3solver->cNeq(bName, "1");
                if (flag2)
                    cond = z3solver->cNeq(bName, "0");

                string moName1 = write1->get_mo_constraint();
                string moName2 = write2->get_mo_constraint();

                string dec = declareIntVar2(bName);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(moName1);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(moName2);
                if (dec != "")
                    retStr += dec + "\n";

                string tmpAndStr = z3solver->cOr(cond, z3solver->cLt(moName1, moName2));
                if (andStr == "")
                    andStr = tmpAndStr;
                else
                    andStr = " " + tmpAndStr;

            }
        }
    }
    if (andStr != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "COWW"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "COWW") + "\n";*/

    return retStr;
}


std::string ConstModelGen::addLockConstraints() {
    string andStr = "";
    std::string retStr = "(echo \"Lock CONSTRAINTS -----\")\n\n";
    std::map<std::string, std::vector<std::pair<LockAction*, LockAction*> > >& lockset = solver->getLockset();
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
                bool flag1, flag2;
                string bName1 = unlock1->get_binary_rel_name(lock2, flag1);
                string bName2 = unlock2->get_binary_rel_name(lock1, flag2);
                string dec = declareIntVar2(bName1);
                if (dec != "")
                    retStr += dec + "\n";
                dec = declareIntVar2(bName2);
                if (dec != "")
                    retStr += dec + "\n";

                /*std::cout << "lock pairs: " << lock1->get_uniq_name() << " " <<
                          unlock1->get_uniq_name() << " " << lock2->get_uniq_name() << " " << unlock2->get_uniq_name() << "\n";
                std::cout << "name: " << bName1 << " " << bName2 << "\n";*/

                string cond1 = z3solver->cEq(bName1, "1");
                if (flag1)
                    cond1 = z3solver->cEq(bName1, "0");

                string cond2 = z3solver->cEq(bName2, "1");
                if (flag2)
                    cond2 = z3solver->cEq(bName2, "0");

                if (andStr == "")
                    andStr = z3solver->cOr(cond1, cond2);
                else
                    andStr += " " + z3solver->cOr(cond1, cond2);

                enforceLockSW(pair1, pair2);
            }
        }
    }

    if (andStr != "") {
        //z3solver->writeLineZ3("(echo \"Lock CONSTRAINTS -----\")\n");
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "Lock"));
        retStr += z3solver->postNamedAssert(z3solver->cAnd(andStr), "Lock") + "\n";
        return retStr;
    } else
        return "";
}

string ConstModelGen::enforceConsistentConstraint(std::set<RWAction*> prefix) {
    std::string constraint;// = enforceMOConsistent() + "\n";
    constraint += enforceRFConsistent_optimized_and_shareWithPrefix(prefix) + "\n";
    return constraint;
}

void ConstModelGen::addFenceConstraints() {

    std::set<FenceAction*>& fences = solver->getFenceSet();
    for (std::set<FenceAction*>::iterator it = fences.begin();
            it != fences.end(); ++it) {
        FenceAction* releaseF = *it;
        if (isReleaseFence(releaseF) == false) continue ;

        for (std::set<FenceAction*>::iterator it2 = fences.begin();
                it2 != fences.end(); ++it2) {
            FenceAction* acquireF = *it2;
            if (releaseF == acquireF) continue ;
            if (isAcquireFence(acquireF) == false) continue;

            SWRelation* sw = new SWRelation(releaseF, acquireF);

            set<Action*> mhbList = solver->identifyMHBRelation(releaseF);
            set<Action*> mhaList = solver->identifyMHARelation(acquireF);
            sw->setHBList(mhbList);
            sw->setHAList(mhaList);

            bool flag;
            string bName = releaseF->get_binary_rel_name(acquireF, flag);
            declareIntVar(bName);
            string cond = " " + z3solver->cEq(bName, "1");
            if (flag)
                cond = " " + z3solver->cEq(bName, "0");

            sw->setPreCond(cond);
            swRelations.insert(sw);
            //std::cout << "Enforce fence-fence constraint: " << sw << " " << mhbList.size() << " " << mhaList.size() << "\n";
            //std::cout << "sw: " << sw << " " << sw->getHBList().size() << " " << sw->getHAList().size() << "\n";
        }
    }
}

std::string ConstModelGen::addSCConstraints() {
    std::set<Action*>& scActions = solver->getSCActions();
    std::cout << "Adding sc constraints: " << scActions.size() << "\n";
    string andStr = "";
    string constraint = "";
    for (set<Action*>::iterator it1 = scActions.begin();
            it1 != scActions.end(); ++it1) {
        Action* action1 = *it1;
        string scName1 = action1->get_SC_name();
        string dec = declareIntVarGE2(scName1, 0);
        if (dec != "")
            constraint += dec + "\n";
        for (set<Action*>::iterator it2 = it1;
                it2 != scActions.end(); ++it2) {
            Action* action2 = *it2;
            if (action1 == action2) continue ;

            string scName2 = action2->get_SC_name();
            dec = declareIntVarGE2(scName2, 0);
            if (dec != "")
                constraint += dec + "\n";

            bool flag, flag2;
            string rbName = action1->get_binary_rel_name(action2, flag);
            string rbName2 = action2->get_binary_rel_name(action1, flag2);
            dec = declareIntVar2(rbName);
            if (dec != "")
                constraint += dec + "\n";
            dec = declareIntVar2(rbName2);
            if (dec != "")
                constraint += dec + "\n";

            string cond = z3solver->cNeq(rbName, "1");
            if (flag)
                cond = z3solver->cNeq(rbName, "0");
            string cond2 = z3solver->cNeq(rbName2, "1");
            if (flag2)
                cond2 = z3solver->cNeq(rbName2, "0");

            string tmpStr = z3solver->cOr(cond, z3solver->cLt(scName1, scName2));
            tmpStr += " " + z3solver->cOr(cond2, z3solver->cLt(scName2, scName1));
            //z3solver->writeLineZ3(z3solver->postNamedAssert(
            //        z3solver->cOr(z3solver->cEq(rbName, "1"), z3solver->cEq(rbName2, "1")), "SCConsistent"));

            cond = z3solver->cEq(rbName, "1");
            if (flag)
                cond = z3solver->cEq(rbName, "0");
            cond2 = z3solver->cEq(rbName2, "1");
            if (flag2)
                cond2 = z3solver->cEq(rbName2, "0");

            tmpStr += " " + z3solver->cOr(cond, cond2);
            if (andStr == "")
                andStr = tmpStr;
            else
                andStr += " " + tmpStr;
        }
    }

    if (andStr != "")
        //z3solver->writeLineZ3(z3solver->postNamedAssert(z3solver->cAnd(andStr), "SCConsistent"));
        return constraint + z3solver->postNamedAssert(z3solver->cAnd(andStr), "SCConsistent");
    else
        return "";
}

RWAction* ConstModelGen::nearestPreviousWrite(Action* action) {
    for (int i = action->get_seq_number() - 1; i >= 0; --i) {
        if (RWAction *tmp = dynamic_cast<RWAction*>(action->get_thread()->getActionList()[i])) {
            if (tmp->is_write()) {
                return tmp;
            } else if (RMWAction* tmp2 = dynamic_cast<RMWAction*>(tmp)) {
                if (CmpXchgAction* tmp3 = dynamic_cast<CmpXchgAction*>(tmp2)) {
                    if (tmp3->getFlag())
                        return tmp;
                } else
                    return tmp;
            }
        }
    }

    return NULL;
}

RWAction* ConstModelGen::nearestPostRead(Action* action) {
    int size = action->get_thread()->getActionList().size();
    for (int i = action->get_seq_number() + 1; i < size; ++i) {
        if (RWAction *tmp = dynamic_cast<RWAction*>(action->get_thread()->getActionList()[i])) {
            if (tmp->is_write()) continue ;
            else                 return tmp;
        }
    }

    return NULL;
}
