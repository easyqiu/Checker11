#include <string>
#include <vector>
#include <iostream>

//#include "Action.h"
//#include "Executor.h"

namespace checker {

    class Action;
    class Executor;

    class Thread {
    public:
        Thread(std::string tid, std::string n) {
            id = tid, name = n;
            //std::cout << "new thread: " << this << " " << tid << " " << n << "\n";
        }

        bool pause(Action *h) {
            return false;
        }

        int getValue(Action *action) {
            return -1;//preFix
        }

        void addAction(Action *action);

        std::vector<Action *> getActionList();

        std::string getName();

        void printTrace();

    private:
        std::string id;
        std::string name;
        Executor *exe;
        std::vector<Action *> actionList;
        std::vector<Action *> preFix;

    };
}

