#include <string>
#include <vector>
#include <iostream>

#include "Action.h"

class Thread {
public:
    Thread(std::string tid) {id = tid;}

    bool pause(Action* h) {
        return false;
    }

    int getValue(Action* action) {
        return -1;//preFix
    }

    void addAction(Action* action);

    std::vector<Action*> getActionList();
    
private:
    std::string id;
    std::vector<Action*> actionList;
    std::vector<Action*> preFix;

};

