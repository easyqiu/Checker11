#include <string>
#include <vector>
#include <iostream>

//#include "Action.h"
//#include "Executor.h"

namespace checker {

    class Action;
    class Executor;
    class Buffer;

    class Thread {
    public:
        Thread(Executor* exe, std::string tid, std::string n) {
            this->exe = exe;
            id = tid, name = n;
            //std::cout << "new thread: " << exe << " " << this << " " << tid << " " << n << "\n";
        }

        ~Thread(){}

        bool pause(Action *h) {
            return false;
        }

        int getValue(Action *action) {
            return -1;//preFix
        }

        void addAction(Action *action);

        std::vector<Action *> getActionList();

        std::string getName();

        std::string get_id() { return id; }

        Executor* getExe() { return exe; }

        void clearBuffer(void* loc);
        void updateBuffer(void* loc, uint64_t val);
        void updateBuffer(std::map<void*, Buffer*> buffers);

        void fetchExpectVal(void* loc, uint64_t val);
        uint64_t getValue(void* loc);

        std::map<void*, Buffer*> getBuffers() { return buffers; }

        void printTrace();

    private:
        std::string id;
        std::string name;
        Executor *exe;
        std::vector<Action *> actionList;
        std::vector<Action *> preFix;
        std::map<void*, Buffer*> buffers; // loc -> buffer

    };
}

