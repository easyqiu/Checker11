//
// Created by aser on 7/10/17.
//

#include <fstream>
#include <string>
#include <cstring>

#include "ModelChecker.h"
#include "Schedule.h"
#include "Z3Solver.h"
#include "Util.h"
#include "Thread.h"
#include "Executor.h"
#include "Action.h"
#include "checker.hpp"

using namespace checker;
using namespace util;

ModelChecker::ModelChecker() {
    solverTime = 0;
    //executeTime = 0;
    test = 3;
    failedChecks.clear();
#ifdef DEBUG
    std::cout << "Generate a model checker11: " << this <<  " " << failedChecks.size() << "\n";
#endif
    loadScheduleFromFile();
    loadDepInfo();
}

ModelChecker::~ModelChecker() {
    std::cout << "In ~ModelChecker!\n";

    std::ifstream fin;
    fin.open("Trace");
    if (!fin.good()) {
        std::cerr << " -> Error opening file Trace.\n";
        fin.close();
        return ;
    }

    bool forFlag = false;
    std::string forName, forSeqNum, contextName;
    std::set<std::string> traces;
    while (!fin.eof()) {
        // read an entire line into memory
        char buf[1024];
        fin.getline(buf, 1024);
        char *token;
        std::string trace = buf;
        if (traces.find(trace) == traces.end())
            traces.insert(trace);
    }

    std::ofstream outfile("Trace_Non_Redundancy", std::ios::app);
    for (std::set<std::string>::iterator it = traces.begin();
            it != traces.end(); ++it)
        outfile << *it << "\n";

    outfile.flush();
    outfile.close();
}

int schIndex = 0;
void ModelChecker::addSch(Schedule* sch, Schedule* parentSch) {
    sch->setIndex(schIndex++);
    sch->setParentIndex(parentSch->getIndex());
    //scheduleInfo[sch] = std::make_pair(schList.size(), scheduleInfo[parentSch].first);
    schList.push_back(sch);
}

void ModelChecker::setExecutor(Executor* exe) {
    this->exe = exe;
    //if (z3solver == NULL)
    //    z3solver = new Z3Solver(exe);
}

void ModelChecker::addCheckSatFailedSchs(std::map<std::pair<std::string, int>, int64_t > newMap) {
#ifdef DEBUG
    std::cout << "In addCheckSatFailedSchs: " << checkSatFailedSchs.size();
#endif
    if (newMap.size() != 0) {
        /*for (std::map<std::pair<std::string, int>, int64_t>::iterator it = newMap.begin();
                it != newMap.end(); ++it)
            std::cout << it->first.first << " " << it->first.second << " " << it->second << "\n";*/
        checkSatFailedSchs.push_back(newMap);
    }
}

void ModelChecker::loadDepInfo() {
    std::cout << "Load dependent information from file: DefInfo";
    std::ifstream fin;
    fin.open("DepInfo");
    if (!fin.good()) {
        std:cerr << " -> Error opening file DefInfo.\n";
        fin.close();
        exit(1);
    }

    while (!fin.eof()) {
        char buf[100];
        fin.getline(buf, 100);
        char *token;
        std::string event = buf;
        //std::cerr << "xxx: " << event  << " " << event.size() << "\n";
        if (event.size() == 0) break;
        if (event.front() == 'F' && event.find("Function: ") != std::string::npos) {
            std::string function = event.substr(event.find("Function: ") + 10);
        } else {
            char *token = strtok(buf, " ");
            int num1 = util::intValueOf(token);
            token = strtok(NULL, " ");
            int num2 = util::intValueOf(token);
            depInfo[num1].insert(num2);
            std::cerr << "defInfo: " << num1 << " " << num2 << "\n";
        }
    }
}

bool ModelChecker::loadScheduleFromFile() {
    std::cout << "Load schedule from file: \n";
    std::ifstream fin;
    fin.open("schedule");
    if (!fin.good()) {
        std::cerr << " -> Error opening file schedule.\n";
        fin.close();
        return false;
    }

    Schedule* sch = new Schedule();

    // read each line of the file
    bool forFlag = false;
    std::string forName, forSeqNum, contextName;
    while (!fin.eof()) {
        // read an entire line into memory
        char buf[100];
        fin.getline(buf, 100);
        char *token;
        std::string event = buf;
        std::cout << "event: " << event << "\n";
        if (event.front() == 'F' && event.find("For: ") != std::string::npos) {
            event = event.substr(event.find("For: ") + 5);
            std::strcpy(buf, event.c_str());
            char *token = strtok(buf, " ");
            forName = token;
            token = strtok(NULL, " ");
            forSeqNum = token;
            token = strtok(NULL, " ");
            contextName = token;
            sch->setActionMap(contextName, std::make_pair(forName, util::intValueOf(forSeqNum)));
            sch->setActionMap2(std::make_pair(forName, util::intValueOf(forSeqNum)), contextName);
            //std::cout << "For: " << forName << " " << forSeqNum << "\n";
            forFlag = true;
        } else if (event.front() == 'R' && event.find("Read Map: ") != std::string::npos) {
            event = event.substr(event.find("Read Map: ") + 10);
            std::strcpy(buf, event.c_str());
            char *token = strtok(buf, " ");
            std::string fname = token;
            token = strtok(NULL, " ");
            std::string seq_num = token;
            token = strtok(NULL, " ");
            std::string context1 = token;
            token = strtok(NULL, " ");
            std::string val = token;
            token = strtok(NULL, " ");
            std::string context2 = token;
            std::cout << "Read Map: " << fname << " " << seq_num << " " << val << "\n";
            forFlag = false;
            //Action *a = exe->getThreadByName(fname)->getActionList()[util::intValueOf(seq_num)];
            std::cout << "sss\n";
            sch->updateReadValueMap(std::make_pair(fname, util::intValueOf(seq_num)), context1, std::make_pair(util::intValueOf(val), context2));
        } else if (event.front() == 'R' && event.find("Read Map2: ") != std::string::npos) {
            event = event.substr(event.find("Read Map2: ") + 11);
            std::strcpy(buf, event.c_str());
            char *token = strtok(buf, " ");
            std::string fname = token;
            token = strtok(NULL, " ");
            std::string seq_num = token;
            token = strtok(NULL, " ");
            std::string context1 = token;
            token = strtok(NULL, " ");
            std::string val = token;
            token = strtok(NULL, " ");
            std::string context2 = token;
            //std::cout << "Read Map: " << fname << " " << seq_num << " " << val << "\n";
            forFlag = false;
            //Action *a = exe->getThreadByName(fname)->getActionList()[util::intValueOf(seq_num)];
            sch->updateReadValueMap2(std::make_pair(fname, util::intValueOf(seq_num)), context1, std::make_pair(util::intValueOf(val), context2));
        } else if (event.front() == 'P' && event.find("Prefix: ") != std::string::npos) {
            event = event.substr(event.find("Prefix: ") + 8);
            std::strcpy(buf, event.c_str());
            char *token = strtok(buf, " ");
            std::string fname = token;
            token = strtok(NULL, " ");
            std::string seq_num = token;
            //std::cout << "Prefix: " << fname << " " << seq_num << "\n";
            sch->updatePrefix(fname, util::intValueOf(seq_num));
        } else if (event.front() == 'P' && event.find("Prefix Context: ") != std::string::npos) {
            event = event.substr(event.find("Prefix Context: ") + 16);
            std::strcpy(buf, event.c_str());
            char *token = strtok(buf, " ");
            std::string fname = token;
            token = strtok(NULL, " ");
            std::string seq_num = token;
            //std::cout << "Prefix: " << fname << " " << seq_num << "\n";
            sch->addPrefixContext(fname, util::intValueOf(seq_num));
        } else if (forFlag) {
            char *token = strtok(buf, " ");
            std::string fname = token;
            token = strtok(NULL, " ");
            std::string seq_num = token;
            token = strtok(NULL, " ");
            std::string context_name = token;
            //std::cout << "  " << fname << " " << seq_num << "\n";
            sch->updatePreAction(std::make_pair(forName, util::intValueOf(forSeqNum)),
                                 std::make_pair(fname, util::intValueOf(seq_num)));

            sch->updatePreAction2(contextName, context_name);
            sch->setActionMap(context_name, std::make_pair(fname, util::intValueOf(seq_num)));
            sch->setActionMap2(std::make_pair(fname, util::intValueOf(seq_num)), context_name);
        }
    }

    fin.close();

    addSch(sch, sch);
    return true;
}

void ModelChecker::readReachability() {
    std::cout << "Load reachability from file: \n";
    std::ifstream fin;
    fin.open("reachability");
    if (!fin.good()) {
        std::cerr << " -> No file reachability.\n";
        fin.close();
        return ;
    }

    // read each line of the file
    bool forFlag = false;
    //std::string forName, forSeqNum, contextName;
    while (!fin.eof()) {
        // read an entire line into memory
        char buf[100];
        fin.getline(buf, 100);
        char *token;
        std::string event = buf;
        std::cout  << event << "\n";
        if (event.front() == 'R' && event.find("Reachability: ") != std::string::npos) {
            event = event.substr(event.find("Reachability: ") + 14);
            std::strcpy(buf, event.c_str());
            char *token = strtok(buf, " ");
            std::string clapNum1 = token;
            token = strtok(NULL, " ");
            std::string claNum2 = token;
            reachability[intValueOf(clapNum1)].insert(intValueOf(claNum2));
        }
    }

    fin.clear();
}

// check whether valueMap is a redundant prefix.
// currentPrefix is the prefix which generates valueMap.
bool ModelChecker::preAddGeneratedPrefix(std::map<std::string, int64_t> currentPrefix,
            Schedule* parentSch) {

    std::set<std::map<std::string, int64_t> > compareMaps;
    int parentIndex = parentSch->getParentIndex();
    int baseIndex = parentSch->getIndex();
    while (true) {
        //std::cout << "Indexes: " << baseIndex << " " << parentIndex << "\n";
        for (std::set<int>::iterator it = childenMap[parentIndex].begin();
                it != childenMap[parentIndex].end(); ++it) {
            //std::cout << "*it: " << *it << "\n";
            if (*it < baseIndex) {
                compareMaps.insert(generatedPrefixes[*it]);
                //std::cout << "add index: " << *it << "\n";
            }
        }

        if (parentIndex == 0 || parentIndex == -1) break;

        baseIndex = parentIndex;
        parentIndex = parentMap[parentIndex];
    }

    bool found = false;
    for (std::vector<std::map <std::string, int64_t> >::iterator
            it = generatedPrefixes.begin(); it != generatedPrefixes.end(); ++it) {
        std::map<std::string, int64_t> vMap = *it;

        if (vMap.size() != currentPrefix.size()) {
            if (vMap.size() > currentPrefix.size())
                continue;
            if (compareMaps.find(vMap) == compareMaps.end())
                continue;

            bool flag = true;
            for (std::map<std::string, int64_t>::iterator it1 = vMap.begin();
                    it1 != vMap.end(); ++it1) {
                if (currentPrefix.find(it1->first) == currentPrefix.end() ||
                        currentPrefix[it1->first] != it1->second) {
                    flag = false;
                    break;
                }
            }

            if (!flag) continue;
            else {
                /*std::cout << "Check Skip: \n";
                for (std::map<std::string, int64_t>::iterator it1 = vMap.begin();
                        it1 != vMap.end(); ++it1) {
                    std::cout << "Because of: " << it1->first << " " << it1->second << "\n";
                }

                for (std::map<std::string, int64_t>::iterator it1 = currentPrefix.begin();
                        it1 != currentPrefix.end(); ++it1) {
                    std::cout << "Skipped: " << it1->first << " " << it1->second << "\n";
                }*/

                return false;
            }

            continue ;

        }

        bool f = true;
        for (std::map<std::string, int64_t>::iterator it1 = vMap.begin();
             it1 != vMap.end(); ++it1) {
            if (currentPrefix.find(it1->first) == currentPrefix.end() ||
                    currentPrefix[it1->first] != it1->second) {
                f = false;
                break;
            }
        }

        if (f) {
            found = true;
            break ;
        }

    }

    return !found;
}

void ModelChecker::addGeneratedPrefix(std::map <std::string, int64_t> valueMap,
                        Schedule* parentSch) {
    parentMap[generatedPrefixes.size()] = parentSch->getIndex();
    childenMap[parentSch->getIndex()].insert(generatedPrefixes.size());
    generatedPrefixes.push_back(valueMap);


    /*for (std::map<std::string, int64_t>::iterator it1 = valueMap.begin();
         it1 != valueMap.end(); ++it1)
        std::cout << "add vMap: " << it1->first << " " << it1->second << "\n";
    */
}

