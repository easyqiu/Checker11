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
        }

        // read the expected value required by the given schedule
        void fetchExpectVal(uint64_t val);

        // for the reads which are not restricted by the schedule
        uint64_t getValue();

        void updateBuffer(uint64_t val) {
            values.push_back(val);
        }

        void updateBuffer(std::vector<uint64_t> vals) {
            assert(values.size() == 0);
            values.insert(values.begin(), vals.begin(), vals.end());
        }

        std::vector<uint64_t> getAllValues() { return  values; }

    private:
        void* addr;
        std::vector<uint64_t> values; // the buffered values

    };
}

#endif //INSTRUMENT_BUFFER_H
