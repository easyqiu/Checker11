//
// Created by aser on 6/6/17.
//
#include <string>
#include <iostream>
#include <sstream>
#include <cassert>

#include "Action.h"
#include "Executor.h"
#include "Thread.h"

using namespace checker;

std::string Action::get_type_str(bool simple) const {

    switch (this->type) {
        case MODEL_FIXUP_RELSEQ: return simple? "RelSeq" : "relseq fixup";
        case THREAD_CREATE: return simple? "TCreate" : "thread create";
        case THREAD_START: return simple? "TStart" : "thread start";
        case THREAD_YIELD: return simple? "TYield" : "thread yield";
        case THREAD_JOIN: return simple? "TJoin" : "thread join";
        case THREAD_FINISH: return simple? "TFinish" : "thread finish";
        case ATOMIC_UNINIT: return simple? "Uninitial" : "uninitialized";
        case ATOMIC_READ: return simple? "ARead" : "atomic read";
        case ATOMIC_WRITE: return simple? "AWrite" : "atomic write";
        case ATOMIC_RMW: return simple? "ARMW" : "atomic rmw";
        case ATOMIC_FENCE: return simple? "AFence" : "atomic fence";
        case ATOMIC_RMWR: return simple? "ARMWR" : "atomic rmwr";
        case ATOMIC_RMWC: return simple? "ARMWC" : "atomic rmwc";
        case ATOMIC_INIT: return simple? "INITA" : "init atomic";
        case ATOMIC_LOCK: return simple? "Lock" : "lock";
        case ATOMIC_UNLOCK: return simple? "ULock" : "unlock";
        case ATOMIC_TRYLOCK: return simple? "TryL" : "trylock";
        case ATOMIC_WAIT: return simple? "Wait" : "wait";
        case ATOMIC_NOTIFY_ONE: return simple? "NotifyOne" : "notify one";
        case ATOMIC_NOTIFY_ALL: return simple? "NotifyAll" : "notify all";
        default: return simple? "Unknown" : "unknown type";
    };
}

std::string Action::get_action_str() {
    std::stringstream ss;
    std::string typeStr = get_type_str(true);
    ss << typeStr;

    switch (this->type) {
        case MODEL_FIXUP_RELSEQ:
            assert(false && "not handle"); return "";

        case THREAD_CREATE:
            ss << " " << exe->getThreadMap()[id1]->getName() << " " << exe->getThreadMap()[id2]->getName() << "\n";
            return ss.str();

        case THREAD_START:
            ss << " " << id1 << "\n";
            return  ss.str();

        case THREAD_YIELD:
            assert(false && "not handle"); return "";

        case THREAD_JOIN:
            ss << " " << exe->getThreadMap()[id1]->getName() << " " << exe->getThreadMap()[id2]->getName() << "\n";
            return ss.str();

        case THREAD_FINISH:
            ss << " " << exe->getThreadMap()[id1]->getName() << "\n";
            return ss.str();

        case ATOMIC_UNINIT:
            return ss.str() + "\n";

        case ATOMIC_READ:
        case ATOMIC_WRITE:
            ss << " " << location << " " << order << " " << value << "\n";
            return ss.str();

        case ATOMIC_RMW:
        case ATOMIC_RMWR:
        case ATOMIC_RMWC:
            assert(false && "not handle"); return "";
        case ATOMIC_FENCE:
            return ss.str();

        case ATOMIC_INIT:
            return ss.str();

        case ATOMIC_LOCK:
        case ATOMIC_UNLOCK:
        case ATOMIC_TRYLOCK:
        case ATOMIC_WAIT:
        case ATOMIC_NOTIFY_ONE:
        case ATOMIC_NOTIFY_ALL:
            return ss.str() + "\n";

        default: assert(false && "not handle"); return "";
    };

    return "";
}

void Action::print() {
    //std::cout << get_mo_str() << "\n";
}

