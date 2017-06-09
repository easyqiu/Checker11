//
// Created by aser on 6/8/17.
//

#include "ConstraintModelGenerator.h"
#include "Executor.h"
#include "Thread.h"

using namespace std;
using namespace checker;

void ConstModelGen::createZ3Solver() {
    numLO = 0;
    numRW = 0;
    numMO = 0;
    numPO = 0;
    numPC = 0;
    numUnkownVars = 0;
}

void ConstModelGen::addMemoryOrderConstraints(map<string, vector<Action*> > operationsByThread)
{

    z3solver.writeLineZ3("(echo \"MEMORY-ORDER CONSTRAINTS -----\")\n");

    int intMax = 0; //indicates the max value that an order constraint can have (which corresponds to the number of operations logged during the symb exec)
    int labelCounter = 0; //counter to label each constraint

    //count the total number of operations
    map<string, Thread*> tMap = exe->getThreadMap();
    for (map<string, Thread*>::iterator it = tMap.begin(); it != tMap.end(); it++) {
        intMax += it->second->getActionList().size();
    }

    string distinct = "(distinct "; //constraint to indicate that we want that each operation to have a unique global order
    for (map<string, Thread*>::iterator it = tMap.begin(); it != tMap.end(); it++) {
        vector<Action*> actionVec = it->second->getActionList();

        //if the list of operations has size > 1 then we must generate order constraints
        //for all the operations, otherwise we only need to declare the operation
        if (actionVec.size() > 1) {
            string conststr = "(<";

            for(vector<Action*>::iterator opit = actionVec.begin(); opit != actionVec.end(); ++opit)
            {
                string declareVar = z3solver.declareIntOrderVarAndStore((*opit)->getOrderConstraintName(), 0, intMax);
                z3solver.writeLineZ3(declareVar);

                conststr.append(" "+(*opit)->getOrderConstraintName());
                distinct.append(" "+(*opit)->getOrderConstraintName());
            }
            conststr.append(")");

            string label = "MO" + util::stringValueOf(labelCounter); //** label to uniquely identify this constraint
            labelCounter++;
            z3solver.writeLineZ3(z3solver.postNamedAssert(conststr,label));  //create assert with the corresponding order constraint
            numMO += opvec.size();  //update constraint counter
        }
        else if(opvec.size() == 1)
        {
            string declareVar = z3solver.declareIntOrderVarAndStore(opvec[0]->getOrderConstraintName(), 0, intMax);
            z3solver.writeLineZ3(declareVar);
            numMO++;
        }
        z3solver.threadIds.push_back(thit->first);  //add thread name to the set of threadIds
    }
    distinct.append(")");
    z3solver.writeLineZ3(z3solver.postAssert(distinct)); //indicate that we want that each operation has its own global order
    z3solver.setNumOps(intMax);
    numUnkownVars += numMO; //there is an unknown order variable per event
}