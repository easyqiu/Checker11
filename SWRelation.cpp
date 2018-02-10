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
    //hbList = list;
    hbList.clear();
    /*for (set<Action*>::iterator it = list.begin();
         it != list.end(); ++it)
        std::cout << "xx: " << (*it)->get_uniq_name() << "\n";*/
    hbList.insert(list.begin(), list.end());
    //std::cout << "set hblist: " << this << " " << hbList.size() << " " << getHBList().size() << "\n";
}

void SWRelation::setHAList(set<Action*> list) {
    haList.clear();
    haList.insert(list.begin(), list.end());
    //std::cout << "set haList: " << this << " " << haList.size() << " " << getHAList().size() << "\n";
}
