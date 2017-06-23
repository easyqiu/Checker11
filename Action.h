#include <stdint.h>

//#include "Executor.h"

namespace checker {

	class Executor;
	class Thread;

	typedef enum memory_order {
		memory_order_relaxed,
		memory_order_acquire,
		memory_order_release,
		memory_order_acq_rel,
		memory_order_seq_cst
	} memory_order;

	typedef enum action_type {
		MODEL_FIXUP_RELSEQ,   /**< Special Action: finalize a release
	                       *   sequence */
		THREAD_CREATE,        /**< A thread creation action */
		THREAD_START,         /**< First action in each thread */
		THREAD_YIELD,         /**< A thread yield action */
		THREAD_JOIN,          /**< A thread join action */
		THREAD_FINISH,        /**< A thread completion action */
		ATOMIC_UNINIT,        /**< Represents an uninitialized atomic */
		ATOMIC_READ,          /**< An atomic read action */
		ATOMIC_WRITE,         /**< An atomic write action */

		ATOMIC_RMW_XCHG,
		ATOMIC_RMW_ADD,
		ATOMIC_RMW_SUB,
		ATOMIC_RMW_AND,
		ATOMIC_RMW_NAND,
		ATOMIC_RMW_OR,
		ATOMIC_RMW_XOR,
		ATOMIC_RMW_MAX,
		ATOMIC_RMW_MIN,
		ATOMIC_RMW_UMAX,
		ATOMIC_RMW_UMIN,

		ATOMIC_RMWR,          /**< The read part of an atomic RMW action */
		ATOMIC_RMW,           /**< The write part of an atomic RMW action */
		ATOMIC_RMWC,          /**< Convert an atomic RMW action into a READ */
		ATOMIC_INIT,          /**< Initialization of an atomic object (e.g.,
	                       *   atomic_init()) */
		ATOMIC_FENCE,         /**< A fence action */
		ATOMIC_LOCK,          /**< A lock action */
		ATOMIC_TRYLOCK,       /**< A trylock action */
		ATOMIC_UNLOCK,        /**< An unlock action */
		ATOMIC_NOTIFY_ONE,    /**< A notify_one action */
		ATOMIC_NOTIFY_ALL,    /**< A notify all action */
		ATOMIC_WAIT           /**< A wait action */
	} action_type_t;


	class Action {
	public:
		Action() {}
		virtual ~Action() {}

		Action(Executor* exe, Thread* thread, action_type_t type) {
			this->exe = exe;
			this->thread = thread;
			this->type = type;
		}

		Action(Executor* exe, Thread* thread, void *loc, action_type_t type) {
			this->exe = exe;
			this->thread = thread;
			this->location = loc;
			this->type = type;
		}

		/*Action(Executor* exe, Thread* thread, action_type_t type, int ord, void *loc, uint64_t val = 0xffff) {
			this->exe = exe;
			this->thread = thread;
			this->type = type;
			order = to_mo(ord);
			location = loc;
			value = val;
		}*/

		Action(Executor* exe, Thread* thread, action_type_t type, std::string id1, std::string id2 = "") {
			this->exe = exe;
			this->thread = thread;
			this->type = type;
			this->id1 = id1;
			this->id2 = id2;
		}


		memory_order to_mo(int i) {
			switch (i) {
				case 1:
					return memory_order_relaxed; // 0
				case 4:
					return memory_order_acquire; // 1
				case 5:
					return memory_order_release; // 2
				case 6:
					return memory_order_acq_rel; // 3
				case 7:
					return memory_order_seq_cst; // 4
				default:
					return memory_order_relaxed; // 5
			}
		}

		void print() const;

		std::string get_tid() const;

		Thread* get_thread() const { return thread; }

		action_type get_type() const { return type; }

		//memory_order get_mo() const { return order; }

		void* get_location() const { return location; }

        std::string get_id1() const { return id1; }
		std::string get_id2() const { return id2; }

		std::string get_location_str() const;

		int get_seq_number() const { return seq_number; }

		void set_seq_number(int seq_num) { seq_number = seq_num;}

		//uint64_t get_value() const { return value; }

		uint64_t get_reads_from_value() const;

		//uint64_t get_write_value() const;

		uint64_t get_return_value() const;

		const Action *get_reads_from() const { return reads_from; }

		//Promise * get_reads_from_promise() const { return reads_from_promise; }
		//std::mutex * get_mutex() const;
		//void set_value(uint64_t val) { value = val; }

		std::string get_type_str(bool simple) const;

		virtual std::string get_action_str();

		void print();

		std::string get_uniq_name();

		std::string get_rf_rel_name(Action* action);

		std::string get_binary_rel_name(Action* action);

		std::string get_SC_name();

	protected:

		Executor* exe;

		Thread* thread;

		std::string get_mo_str() const;

		/** @brief Type of action (read, write, RMW, fence, thread create, etc.) */
		action_type type;

		/** @brief The memory order for this operation. */
		//memory_order order;

		/** @brief A pointer to the memory location for this action. */
		void *location;

		/** @brief The thread id that performed this action. */
		int tid;

		/** @brief The value written or read (for write / read / RMW) */
		//uint64_t value;

		/** for thread create and start*/
		std::string id1;
		std::string id2;

		/**
         * @brief The store that this action reads from
         *
         * Only valid for reads
         */
		const Action *reads_from;

		/**
         * @brief The promise that this action reads from
         *
         * Only valid for reads
         */
		//Promise *reads_from_promise;

		/** @brief The last fence release from the same thread */
		const Action *last_fence_release;

		/**
         * @brief The sequence number of this action
         *
         * Except for ATOMIC_UNINIT actions, this number should be unique and
         * should represent the action's position in the execution order.
         */
		int seq_number;
	};

	class RWAction :  public Action  {
	public:
		RWAction(Executor* exe, Thread* thread, action_type_t type,
				 int ord, void *loc, bool write = false, uint64_t val = 0xffff) : Action(exe, thread, loc, type) {

			order = to_mo(ord);
			location = loc;
			isWrite = write;
			value = val;
			//std::cout << "test in RWAction: " << val << " " << ord << " " << order << "\n";
		}

		~RWAction() {}

		uint64_t get_value() const;

		bool is_write() const { return isWrite; }

		memory_order get_mo() const { return order; }

        bool isSCAction();

		void set_value(uint64_t val) { value = val; }

		std::string get_action_str();

		std::string get_consraint_name();

		std::string get_mo_constraint();

	protected:
		/** @brief The value written or read (for write / read / RMW) */
		uint64_t value;

		/** @brief The memory order for this operation. */
		memory_order order;

		/** @brief A pointer to the memory location for this action. */
		void *location;

		bool isWrite;
	};

    class RMWAction : public RWAction {
    public:
        RMWAction(Executor* exe, Thread* thread, action_type_t type,
                  int ord, void* loc, int val) : RWAction(exe, thread, type, ord, loc) {
            //order = to_mo(ord);
            //location = loc;
            value = val;
        }

		void setReadValue(int val) {
            readValue = val;
            std::cout << "Set Read Value: " << val << "\n";
        }

		int getReadValue() { return readValue; }

		void setWriteValue(int val) {
			writeValue = val;
			std::cout << "Set write Value: " << val << "\n";
		}

		int getWriteValue() { return writeValue; }

		std::string get_action_str();

    private:
        int value;
		int readValue;
		int writeValue;
        //memory_order order;
        //void *location;

    };


	class FenceAction :  public Action  {
	public:
		FenceAction(Executor* exe, Thread* thread, action_type_t type, int order)
				: Action(exe, thread, type) {
			this->order = to_mo(order);
		}

		memory_order get_mo() { return order; }

		std::string get_action_str();

		bool isSCAction();

	protected:
		memory_order order;
	};

	class LockAction : public Action {
	public:
		LockAction(Executor* exe, Thread* thread, action_type_t type, void* loc)
				: Action(exe, thread, loc, type) {
			this->location = loc;
			paired_seq_num = -1;
		}

		std::string get_action_str();

		void set_pairedNum(int num) { paired_seq_num = num; }

		int get_pairedNum() { return paired_seq_num; }

	private:
		void *location;
		int paired_seq_num; // the paired lock/unlock action
	};
}

