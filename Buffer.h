//
// Created by aser on 6/18/17.
//

#include <stdint.h>
#include <vector>
#include <cassert>
#include <string>
#include <sstream>

#ifndef INSTRUMENT_BUFFER_H
#define INSTRUMENT_BUFFER_H

namespace checker {
    class Thread;

    class Buffer {
    public:
        Buffer(Executor *e, Thread* t, std::string loc) {
            //std::cout << "buffer: !" << loc << "!\n";
            exe = e;
            addr = loc;
            verify = false;
            thread = t;
        }

        ~Buffer() {
            //std::cout << "delete buffer: " << this << "\n";
        }

        // read the expected value required by the given schedule
        void fetchExpectVal(std::pair<int64_t, std::string> item);

        // for the reads which are not restricted by the schedule
        std::pair<int64_t, std::string> getValue();

        void clear() { std::cout << "Buffer Clear!\n"; values.clear(); }

        void updateBuffer(int64_t val, std::string context, int order);

        void updateBuffer(std::vector<std::pair<int64_t, std::string> > vals);

        std::vector<std::pair<int64_t, std::string> > getAllValues() {
            //std::cout << "values.size: " << values.size() << "\n";
            return values;
        }

    private:
        Executor* exe;
        Thread* thread;
        std::string addr;
        int64_t verifyVal;
        bool verify;
        std::vector<std::pair<int64_t, std::string> > values; // the buffered values

    };
}

#endif //INSTRUMENT_BUFFER_H
