//
// Created by aser on 6/4/17.
//
#include <iostream>
#include <fstream>
#include <sstream>

#include "Executor.h"
#include "Thread.h"
#include "Action.h"

using namespace checker;

void Thread::addAction(Action* action) {
    //std::cout << "Pre Add action: " << this << " " << action->get_action_str() << " " << id << " " << actionList.size() << "\n";
    actionList.push_back(action);
    //std::cout << "Add action: " << this << " " << action->get_action_str() << " " << id << " " << actionList.size() << "\n";
}

std::vector<Action*> Thread::getActionList() {
    return actionList;
}

void Thread::printTrace() {
    std::cout << "print trace: " << this << " " << name << " " << id << " " << actionList.size() << "\n";
    for (std::vector<Action*>::iterator it = actionList.begin();
            it != actionList.end(); ++it) {
        Action* action = *it;

        std::ofstream outfile(name, std::ios::app);
        outfile << action->get_action_str();
        outfile.flush();
        outfile.close();
    }
}

std::string Thread::getName() {return name;}
