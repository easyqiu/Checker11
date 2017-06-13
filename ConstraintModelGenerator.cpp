//
// Created by aser on 6/8/17.
//

#include <cassert>

#include "ConstraintModelGenerator.h"
#include "Solver.h"
#include "Executor.h"
#include "Thread.h"
#include "Action.h"
#include "Util.h"

using namespace std;
using namespace checker;

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

void ConstModelGen::addSWConstraints(std::map<Action*, Action*> swRelations) {
    for (std::map<Action*, Action*>::iterator it = swRelations.begin();
            it != swRelations.end(); ++it) {
        Action* a1 = it->first;
        Action* a2 = it->second;
        string bRelName = a1->get_binary_rel_name(a2);
        string declareVar = z3solver->declareIntOrderVarAndStore(bRelName, 1);
        z3solver->writeLineZ3(declareVar);
        numB++;
        numUnkownVars++;
    }
    z3solver->setNumOps(numB);
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
            andStr += " " + z3solver->cNeq(bRelName, "1");

            for (std::vector<RWAction*>::iterator it2 = writeSet.begin();
                    it2 != writeSet.end(); ++it2) {
                RWAction* write2 = *it2;
                assert(read->get_location_str() == write->get_location_str() &&
                read->get_location_str() == write2->get_location_str());
                if (write == write2)
                    continue ;

                std::cout << "location: " << read->get_location_str() << " " << write->get_location_str() << " " << write2->get_location_str() << "\n";
                std::cout << "read: " << read->get_action_str() << "\n";
                std::cout << "write: " << write->get_action_str() << "\n";
                std::cout << "write2: " << write2->get_action_str() << "\n";
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
        andStr += " " + tmpAndStr;
    }

    andStr = z3solver->cAnd(andStr);
    z3solver->writeLineZ3(z3solver->postAssert(andStr));
}

std::string ConstModelGen::addRFRelation(RWAction *read, RWAction *write, int val) {
    string rfRelName = read->get_rf_rel_name(write);
    declareIntVar(rfRelName);
    return z3solver->cEq(rfRelName, "1");
}

void ConstModelGen::declareIntVar(std::string name) {
    string retStr = z3solver->declareIntVar(name);
    std::cout << "declare: " << name << " " << retStr << "\n";
    if (retStr != "")
        z3solver->writeLineZ3(retStr);
}


