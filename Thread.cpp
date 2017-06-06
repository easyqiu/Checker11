//
// Created by aser on 6/4/17.
//
#include "Thread.h"
 
void Thread::addAction(Action* action) {
    actionList.push_back(action);
}

std::vector<Action*> Thread::getActionList() {
    return actionList;
}