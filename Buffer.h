//
// Created by aser on 6/18/17.
//

#include <stdint.h>
#include <vector>
#include <cassert>

#ifndef INSTRUMENT_BUFFER_H
#define INSTRUMENT_BUFFER_H

namespace checker {
    class Buffer {
    public:
        Buffer(void* loc) {
            addr = loc;
            verify = false;
        }

        // read the expected value required by the given schedule
        void fetchExpectVal(int64_t val);

        // for the reads which are not restricted by the schedule
        int64_t getValue();

        void clear() { values.clear(); }

        void updateBuffer(int64_t val, int order);

        void updateBuffer(std::vector<int64_t> vals);

        std::vector<int64_t> getAllValues() { return  values; }

    private:
        void* addr;
        int64_t verifyVal;
        bool verify;
        std::vector<int64_t> values; // the buffered values

    };
}

#endif //INSTRUMENT_BUFFER_H
