//
// Created by aser on 7/10/17.
//

#include "ModelChecker.h"

using namespace checker;

ModelChecker::ModelChecker() {
    std::cout << "BBBBBBBBBBBBBBB\n";
    solverTime = 0;
    test = 3;
    failedChecks.clear();
    std::cout << "Generate a model checker11: " << this <<  " " << failedChecks.size() << "\n";
}

void ModelChecker::addCheckSatFailedSchs(std::map<std::pair<std::string, int>, int64_t > newMap) {
    std::cout << "In addCheckSatFailedSchs!\n";
    if (newMap.size() != 0) {
        std::cout << "bbbb\n";
        for (std::map<std::pair<std::string, int>, int64_t>::iterator it = newMap.begin();
                it != newMap.end(); ++it)
            std::cout << it->first.first << " " << it->first.second << " " << it->second << "\n";
        checkSatFailedSchs.push_back(newMap);
    }
}
