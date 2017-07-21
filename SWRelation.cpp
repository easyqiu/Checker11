//
// Created by aser on 7/20/17.
//

#include <set>
#include <iostream>
#include "SWRelation.h"
#include "Action.h"

using namespace checker;
using namespace std;

void SWRelation::setHBList(set<Action*> list) {
    std::cout << "set hblist: " << this << "\n";
    //hbList = list;
    hbList.clear();
    std::cout << "111: " << list.size() << "\n";
    for (set<Action*>::iterator it = list.begin();
         it != list.end(); ++it)
        std::cout << "xx: " << (*it)->get_uniq_name() << "\n";
    hbList.insert(list.begin(), list.end());
    std::cout << "222\n";
}