//
// Created by aser on 6/8/17.
//

#include "ConstraintModelGenerator.h"
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
