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
#include "Util.h"

using namespace checker;
using namespace util;

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

        case ATOMIC_CMP_XCHG: return simple? "ACMP_XCHG" : "Atomic cmp_xchg";
        case ATOMIC_RMW_XCHG: return simple? "ARMW_XCHG" : "atomic rmw_xchg";
        case ATOMIC_RMW_ADD: return simple? "ARMW_ADD" : "atomic rmw_add";
        case ATOMIC_RMW_SUB: return simple? "ARMW_SUB" : "atomic rmw_sub";
        case ATOMIC_RMW_AND: return simple? "ARMW_AND" : "atomic rmw_and";
        case ATOMIC_RMW_NAND: return simple? "ARMW_NAND" : "atomic rmw_nand";
        case ATOMIC_RMW_OR: return simple? "ARMW_OR" : "atomic rmw_or";
        case ATOMIC_RMW_XOR: return simple? "ARMW_XOR" : "atomic rmw_xor";
        case ATOMIC_RMW_MAX: return simple? "ARMW_MAX" : "atmoic rmw_max";
        case ATOMIC_RMW_MIN: return simple? "ARMW_MIN" : "atomic rmw_min";
        case ATOMIC_RMW_UMAX: return simple? "ARMW_UMAX" : "atomic rmw_umax";
        case ATOMIC_RMW_UMIN: return simple? "ARWM_UMIN" : "atomic rmw_umin";

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

    //std::cout << "In parent: " << typeStr << "\n";

    switch (this->type) {
        case MODEL_FIXUP_RELSEQ:
            //assert(false && "not handle model_fixup_relseq");
            return "relseq";

        case THREAD_CREATE:
            ss << " " << exe->getThreadMap()[id1]->getName() << " " << exe->getThreadMap()[id2]->getName() << "\n";
            return ss.str();

        case THREAD_START:
            ss << " " << id1 << "\n";
            return  ss.str();

        case THREAD_YIELD:
            return ss.str();

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
            //ss << " " << location << " " << order << " " << value << "\n";
            //RWAction* a = dynamic_cast<RWAction*>(this);
            //ss << " " << location << " " << a->get_mo() << " " << a->get_value() << "\n";
            return ss.str();

        case ATOMIC_CMP_XCHG:
        case ATOMIC_RMW_XCHG:
        case ATOMIC_RMW_ADD:
        case ATOMIC_RMW_SUB:
        case ATOMIC_RMW_AND:
        case ATOMIC_RMW_NAND:
        case ATOMIC_RMW_OR:
        case ATOMIC_RMW_XOR:
        case ATOMIC_RMW_MAX:
        case ATOMIC_RMW_MIN:
        case ATOMIC_RMW_UMAX:
        case ATOMIC_RMW_UMIN:
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
    std::cout << get_uniq_name() << "\n";
}

std::string Action::get_location_str() const {
    std::stringstream ss;
    ss << location;
    return ss.str();
}

std::string Action::get_tid() const {
    return thread->getName();
}

std::string Action::get_rf_rel_name(Action *action) {
    return "RF_" + this->get_uniq_name() + "_" + action->get_uniq_name();
}

std::string Action::get_binary_rel_name(Action *action, bool &flag) {
    if (this->get_uniq_name() < action->get_uniq_name()) {
        flag = false;
        return "B_" + this->get_uniq_name() + "_" + action->get_uniq_name();
    } else {
        flag = true;
        return "B_" + action->get_uniq_name() + "_" + this->get_uniq_name();
    }
}

std::string Action::get_SC_name() {
    std::string str = "S_" + this->get_uniq_name();
    return str;
}

std::string Action::get_uniq_name() {
    return thread->getName() + "-" + util::stringValueOf(get_seq_number());
}

std::string Action::getContextName() {
    //std::cout << "in getContextName: " << context << " " << clapNum << " " << times << "\n";
    return context + "|" + util::stringValueOf(clapNum) + "|" + util::stringValueOf(times);
}

std::string RWAction::get_action_str() {
    std::stringstream ss;
    ss << get_type_str(true) << " " << location << " " << order << " " << value << "\n";
    return ss.str();
}

std::string RWAction::get_consraint_name() {
    std::stringstream ss;
    if (isWrite) {
        ss << "W_" << location << " " << thread->getName() << " " << get_seq_number();
        return ss.str();
    } else {
        ss << "R_" << location << " " << thread->getName() << " " << get_seq_number();
        return ss.str();
    }
}

int64_t RWAction::get_value() const {
    return value;
}

std::string RWAction::get_mo_constraint() {
    return "M_" + this->get_uniq_name();
}

bool RWAction::isSCAction() {
    if (order == memory_order_seq_cst)
        return true;
    return false;
}

std::string RMWAction::get_action_str() {
    std::stringstream ss;
    ss << get_type_str(true) << " " << location << " " << order << " " << value << "\n";
    return ss.str();
}

int64_t RMWAction::computeWriteValue(int64_t oldVal) {

    int64_t val = getVariableVar();

    switch (type) {
        case ATOMIC_RMW_ADD:
            return oldVal + val;
        case ATOMIC_RMW_SUB:
            return oldVal - val;
        case ATOMIC_RMW_AND:
            return oldVal & val;
        case ATOMIC_RMW_NAND:
            return ~(oldVal & val);
        case ATOMIC_RMW_OR:
            return oldVal | val;
        case ATOMIC_RMW_XOR:
            return oldVal ^ val;
        case ATOMIC_RMW_MAX:
            return oldVal > val ? oldVal : val;
        case ATOMIC_RMW_MIN:
            return oldVal < val ? oldVal : val;
        case ATOMIC_RMW_UMAX:
            return oldVal > val ? oldVal : val;
        case ATOMIC_RMW_UMIN:
            return oldVal < val ? oldVal : val;
        case ATOMIC_CMP_XCHG:
            return dynamic_cast<CmpXchgAction*>(this)->computeWriteValue(oldVal);
        default:
            std::cout << "type: " << type << " " << "\n";
            assert(false && "Not handle this action type!\n");
            return 0;
    }
}

int64_t CmpXchgAction::computeWriteValue(int64_t oldVal) {

    return oldVal == expectVal ? newVal : oldVal;
}

std::string FenceAction::get_action_str() {
    std::stringstream ss;
    ss << get_type_str(true) << " " << order << "\n";
    return ss.str();
}

bool FenceAction::isSCAction() {
    if (order == memory_order_seq_cst)
        return true;
    return false;
}

std::string LockAction::get_action_str() {
    std::stringstream ss;
    ss << get_type_str(true) << " " << location << "\n";
    return ss.str();
}
