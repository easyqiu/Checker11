//
// Created by aser on 6/12/17.
//

#include <sstream>
#include <fstream>
#include <string>
#include <set>
#include <map>
#include "Schedule.h"
#include "Thread.h"
#include "Action.h"
#include "checker.hpp"

//using namespace std;
using namespace checker;

void Schedule::updateReadValueMap(std::pair<std::string, int> fs, std::string context, std::pair<int64_t, std::string> item) {
    readValueMap[fs] = std::make_pair(context, item);
}

void Schedule::updateReadValueMap2(std::pair<std::string, int> fs, std::string context, std::pair<int64_t, std::string> item) {
    readValueMap2[fs] = std::make_pair(context, item);
}

void Schedule::updatePreAction(std::pair<std::string, int> action1, std::pair<std::string, int> action2) {
    //std::cout << "update preAction: " << action1.first << " " << action1.second << " " << action2.first << " " << action2.second << "\n";
    preActions[action1].insert(action2);
    if (preActions.find(action2) == preActions.end())
        return ;

    std::set<std::pair<std::string, int> > preSet = preActions[action2];
    for (std::set<std::pair<std::string, int> >::iterator it = preSet.begin();
            it != preSet.end(); ++it) {
        if (action1.first != it->first)
            preActions[action1].insert(*it);
    }

    //preActions[action1].insert(preSet.begin(), preSet.end());
}

void Schedule::updatePreAction2(std::string action1, std::string action2) {
    preActions2[action1].insert(action2);
    std::cout << "update2: " << action1 << " " << action2 << " " << preActions2[action1].size() << "\n";
    if (preActions2.find(action2) == preActions2.end()) return ;

    std::set<std::string> preSet = preActions2[action2];
    std::string context = action1.substr(0, action1.find("|"));
    for (std::set<std::string>::iterator it = preSet.begin();
            it != preSet.end(); ++it) {
        std::string context2 = *it;
        context2 = context2.substr(0, context2.find("|"));
        if (context != context2)
            preActions2[action1].insert(*it);
    }
    //preActions2[action1].insert(preSet.begin(), preSet.end());
}

void Schedule::setActionMap(std::string action1, std::pair<std::string, int> action2) {
    actionMap[action1] = action2;
}

void Schedule::setActionMap2(std::pair<std::string, int> action2, std::string action1) {
    actionMap2[action2] = action1;
}

const std::map<std::string, std::pair<std::string, int> >& Schedule::getActionMap() {
    return actionMap;
}

const std::map<std::pair<std::string, int>, std::string >& Schedule::getActionMap2() {
    return actionMap2;
}

void Schedule::deletePreAction2() {

    print();
    std::map<std::string, std::set<std::string> > newMap;
    bool flag = true;

    std::set<std::string> importantActions;
    for (std::map<std::pair<std::string, int>, std::pair<std::string, std::pair<int64_t, std::string> > >::iterator it = readValueMap.begin();
            it != readValueMap.end(); ++it) {
        importantActions.insert(it->second.first);
    }

    while (flag) {
        flag = false;
        for (std::map<std::string, std::set<std::string> >::iterator it = preActions2.begin();
             it != preActions2.end(); ++it) {
            std::string action = it->first;
            std::set<std::string> list = it->second;
            if ((prefixContexts.find(action) != prefixContexts.end() ||
                    importantActions.find(action) != importantActions.end()) &&
                    newMap.find(action) == newMap.end()) {
                newMap[action] = list;
                importantActions.insert(action);
                importantActions.insert(list.begin(), list.end());
                flag = true;
            } else {
                for (std::set<std::string>::iterator it2 = list.begin();
                        it2 != list.end(); ++it2) {
                    std::string str = *it2;
                    if (importantActions.find(str) != importantActions.end()) {
                        if (newMap[action].insert(str).second)
                            flag = true;
                    }
                }
            }
        }
    }

    preActions2.clear();
    preActions2.insert(newMap.begin(), newMap.end());

    print();
}

void Schedule::deletePreAction(std::map<std::string, int> maxIndex) {
    std::map<std::pair<std::string, int>, std::set<std::pair<std::string, int> > > newMap;
    std::map<std::string, std::set<std::string> > newMap2;

    for (std::map<std::pair<std::string, int>, std::set<std::pair<std::string, int> > >::iterator it = preActions.begin();
            it != preActions.end(); ++it) {
        std::string threadName = it->first.first;
        //threadName = threadName.substr(0, threadName.find("*"));
        int max = maxIndex[threadName];//[it->first.first];
        if (it->first.second > max) {
            preActions2.erase(actionMap2[it->first]);
            continue;
        }

        std::set<std::pair<std::string, int> > newSet;
        std::set<std::string> newSet2;
        for (std::set<std::pair<std::string, int> >::iterator it2 = it->second.begin();
                it2 != it->second.end(); ++it2) {
            std::string name = it2->first;
            //name = name.substr(0, name.find("*"));
            //if (it2->second > maxIndex[it2->first]) continue ;
            if (it2->second > maxIndex[name]) {
                continue ;
            }

            newSet.insert(*it2);
            newSet2.insert(actionMap2[*it2]);
        }

        newMap[it->first] = newSet;
        newMap2[actionMap2[it->first]] = newSet2;
    }

    preActions.clear();
    preActions.insert(newMap.begin(), newMap.end());
    preActions2.clear();
    preActions2.insert(newMap2.begin(), newMap2.end());
}

bool Schedule::checkPreAction(Action* a) {

    return checkPreAction2(a);

    std::pair<std::string, int> action = std::make_pair(a->get_thread()->getName(), a->get_seq_number());
    pthread_mutex_lock(&preActionsLock);
    if (preActions.find(action) == preActions.end() ||
            preActions[action].size() == 0) {
        pthread_mutex_unlock(&preActionsLock);
        return true;
    } else {
        /*std::cout << "size: " << action.first << " " << action.second << " " << preActions[action].size() << "\n";
        for (std::set<std::pair<std::string, int> >::iterator it = preActions[action].begin();
                it != preActions[action].end(); ++it) {
            std::cout << "xxxxx: " << action.first << " " << action.second << " " << it->first << " " << it->second << "\n";
        }*/
        pthread_mutex_unlock(&preActionsLock);
        return false;
    }
}

bool Schedule::checkPreAction2(Action* a) {
    std::string action = a->getContextName();
    pthread_mutex_lock(&preActionsLock);

    std::stringstream ss;
    for (std::map<string, set<string> >::iterator it2 = preActions2.begin(); it2 != preActions2.end(); ++it2) {
        string a1 = it2->first;
        for (std::set<std::string>::iterator it = preActions2[a1].begin();
             it != preActions2[a1].end(); ++it)
            ss << "checkPreAction2: " << a1 << " " << a->get_uniq_name() << " " << a->getContextName() << " " << *it << "\n";
    }
    std::cout << ss.str();

    if (preActions2.find(action) == preActions2.end() ||
            preActions2[action].size() == 0) {
        preActions2.erase(action);
        //remainContexts.erase(action);
        //std::cout << "erasing: " << action << "\n";

        pthread_mutex_unlock(&preActionsLock);
        //std::cout << "check preAction1: " << action << "\n";
        return true;

        if (preActions2.empty() || erasedActions.find(action) != erasedActions.end()) {
            pthread_mutex_unlock(&preActionsLock);
            std::cout << "trrrrue1!\n";
            return true;
        }

        for (std::map<std::string, std::set<std::string> >::iterator
                it = preActions2.begin(); it != preActions2.end(); ++it) {
            std::string str = it->first;
            if (str.substr(0, str.find("*")) == a->get_thread()->getName()) {
                pthread_mutex_unlock(&preActionsLock);
                std::cout << "trrrrue2!\n";
                return true;
            } else {
                for (std::set<std::string>::iterator it2 = it->second.begin();
                    it2 != it->second.end(); ++it2) {
                    std::string s = *it2;
                    //std::cout << "ee: " << s << " " << s.substr(0, s.find("*")) << " " << a->get_thread()->getName() << "\n";
                    if (s.substr(0, s.find("*")) == a->get_thread()->getName()) {
                        pthread_mutex_unlock(&preActionsLock);
                        std::cout << "trrrrue3!\n";
                        return true;
                    }
                }
            }
            //std::cout << "for: " << it->first << " " << it->second.size() << "\n";
            //for (std::set<std::string>::iterator it2 = it->second.begin();
            //        it2 != it->second.end(); ++it2)
            //    std::cout << "yy: " << *it2 << "\n";
        }

        //std::cout << "xxx: " << action << "\n";

        pthread_mutex_unlock(&preActionsLock);
        return false;
    } else {
        /*bool flag = false;
        std::string context = action.substr(0, action.find("|"));
        std::cout << "context: " << context << "\n";
        for (std::set<std::string>::iterator it = remainContexts.begin();
                it != remainContexts.end(); ++it) {
            std::string str = *it;
            str = str.substr(0, action.find("|"));
            if (context == str) {
                flag = true;
                break;
            }
        }

        if (!flag) {
            std::cout << "continue: " << action << "\n";
            preActions2.erase(action);

            std::cout << "check preAction2: " << action << "\n";
            pthread_mutex_unlock(&preActionsLock);
            return true;
        }*/

#ifdef DEBUG
        std::stringstream ss;
        for (std::set<std::string>::iterator it = preActions2[action].begin();
                it != preActions2[action].end(); ++it)
            ss << "remain: " << a->get_uniq_name() << " " << a->getContextName() << " " << *it << "\n";
        std::cout << ss.str();
#endif
        pthread_mutex_unlock(&preActionsLock);
        return false;
    }
}

void Schedule::eraseAction(std::pair<std::string, int> action) {
    pthread_mutex_lock(&preActionsLock);
    //std::cout << "In erase1: " <<  this << " " << preActions.size() << " " << action.first << " " << action.second << "\n";
    for (std::map<std::pair<std::string, int>, std::set<std::pair<std::string, int> > >::iterator
            it = preActions.begin(); it != preActions.end(); ++it) {
        std::set<std::pair<std::string, int> > actionSet = it->second;
        //std::cout << "111: " << actionSet.size() << "\n";
        if (actionSet.find(action) != actionSet.end())
            it->second.erase(action);
        //std::cout << "222\n";
    }
    //std::cout << "end erase\n";
    pthread_mutex_unlock(&preActionsLock);
}

void Schedule::eraseAction2(std::string action) {
    pthread_mutex_lock(&preActionsLock);
    std::pair<std::string, int> uniqueName = actionMap[action];
    std::set<std::string> clearSet;

    std::cout << "erasing action2: " << action << "\n";
    std::stringstream ss;
    for (std::map<string, set<string> >::iterator it2 = preActions2.begin(); it2 != preActions2.end(); ++it2) {
        string a1 = it2->first;
        for (std::set<std::string>::iterator it = preActions2[a1].begin();
             it != preActions2[a1].end(); ++it)
            ss << "eraseAction2: " << a1 << " " << *it << "\n";
    }
    std::cout << ss.str();

    for (std::map<std::string, std::set<std::string> >::iterator
            it = preActions2.begin(); it != preActions2.end(); ++it) {
        std::set<std::string> newSet;
        for (std::set<std::string>::iterator it2 = it->second.begin();
                it2 != it->second.end(); ++it2) {
            std::pair<std::string, int> uniqueName2 = actionMap[*it2];
            if (uniqueName.first == uniqueName2.first && uniqueName.second >= uniqueName2.second) {
                erasedActions.insert(action);
                continue;
            }

            newSet.insert(*it2);
        }
        if (newSet.size() != 0)
            preActions2[it->first] = newSet;
        else
            clearSet.insert(it->first);
    }

    for (std::set<std::string>::iterator it = clearSet.begin();
            it != clearSet.end(); ++it)
        preActions2.erase(*it);

    ss.str("");
    for (std::map<string, set<string> >::iterator it2 = preActions2.begin(); it2 != preActions2.end(); ++it2) {
        string a1 = it2->first;
        for (std::set<std::string>::iterator it = preActions2[a1].begin();
             it != preActions2[a1].end(); ++it)
            ss << "after eraseAction2: " << a1 << " " << *it << "\n";
    }
    std::cout << ss.str();

    pthread_mutex_unlock(&preActionsLock);
}

/*bool Schedule::getRFValue(std::pair<std::string, int> action, int64_t &val) {
    if (readValueMap.find(action) != readValueMap.end()) {
        val = readValueMap[action].second;
        return true;
    }

    if (readValueMap2.find(action) != readValueMap2.end()) {
        val = readValueMap2[action].second;
        return true;
    }

    return false;
}*/

bool Schedule::getRFValue2(std::string actionContext, std::string &readContext, std::pair<int64_t, std::string> &item) {
    for (std::map <std::pair<std::string, int>, std::pair<std::string, std::pair<int64_t, std::string> > >::iterator
            it = readValueMap.begin(); it != readValueMap.end(); ++it) {
        if (actionContext == it->second.first) {
            readContext = it->second.first;
            item = it->second.second;
            return true;
        }
    }

    /*for (std::map <std::pair<std::string, int>, std::pair<std::string, std::pair<int64_t, std::string> > >::iterator
            it = readValueMap2.begin(); it != readValueMap2.end(); ++it) {
        if (actionContext == it->second.first) {
            readContext = it->second.first;
            item = it->second.second;
            return true;
        }
    }*/

    return false;
}

void Schedule::clearData() {
    readValueMap.clear();
    readValueMap2.clear();
    preActions.clear();
    //std::cout << "size: " << readValueMap.size() << " " << preActions.size() << "\n";
}

bool Schedule::inPrefix(std::pair<std::string, int> action) {
    if (prefixMap.find(action.first) == prefixMap.end())
        return false;
    if (prefixMap[action.first] >= action.second)
        return true;

    return false;

    /*if (readValueMap.find(action) != readValueMap.end())
        return true;
    else
        return false;*/
}

bool Schedule::inPrefix2(std::string contex) {
    if (prefixContexts.find(contex) != prefixContexts.end())
        return true;
    return false;
}

void Schedule::updatePrefix(std::string threadName, int prefix) {
    prefixMap[threadName] = prefix;
}

std::map<std::string, int>& Schedule::getPrefixMap() {
    return prefixMap;
}

void Schedule::print() {
    std::cout << "Schedule: " << this << " " << index << " " << parentIndex << " " <<
              readValueMap.size() << " " << actionMap.size() << " " << actionMap2.size() << "\n";

    std::stringstream ss;
    for (std::map<std::pair<std::string, int>, std::set<std::pair<std::string, int> > >::iterator
                 it = preActions.begin(); it != preActions.end(); ++it) {
        ss << "For: " << it->first.first << " " << it->first.second << " " << actionMap2[it->first] <<  "\n";
        for (std::set<std::pair<std::string, int> >::iterator it2 = it->second.begin();
                it2 != it->second.end(); it2++)
            ss << "    " << it2->first << " " << it2->second << " " << actionMap2[*it2] << "\n";
    }

    for (std::map<string, set<string> >::iterator it2 = preActions2.begin(); it2 != preActions2.end(); ++it2) {
        string a1 = it2->first;
        ss << "For2: " << it2->first <<  "\n";
        for (std::set<std::string>::iterator it = preActions2[a1].begin(); it != preActions2[a1].end(); ++it)
            ss << "    " << *it << "\n";
    }

    for (std::map<std::pair<std::string, int>, std::pair<std::string, std::pair<int64_t, std::string> > >::iterator it = readValueMap.begin();
            it != readValueMap.end(); ++it) {
        ss << "Read Map: " << it->first.first << " " << it->first.second << " "
           << it->second.first << " " << it->second.second.first << " " << it->second.second.second << "\n";
    }

    for (std::map<std::pair<std::string, int>, std::pair<std::string, std::pair<int64_t, std::string> > >::iterator it = readValueMap2.begin();
            it != readValueMap2.end(); ++it) {
        ss << "Read Map2: " << it->first.first << " " << it->first.second << " "
           << it->second.first << " " << it->second.second.first << " " << it->second.second.second << "\n";
    }

    ss << "\n";
    for (std::map<std::string, int>::iterator it = prefixMap.begin();
            it != prefixMap.end(); ++it) {
        ss << "Prefix: " << it->first << " " << it->second << "\n";
    }

    for (std::map<std::string, int64_t >::iterator it = prefixContexts.begin();
            it != prefixContexts.end(); ++it)
        ss << "Prefix Context: " << it->first << " " << it->second << "\n";

    std::cout << ss.str();

    std::ofstream lastSch;
    lastSch.open("LastSch", std::ios::trunc);
    lastSch << ss.str();
    lastSch.close();
}


