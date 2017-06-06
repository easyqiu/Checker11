#include <stdint.h>

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
    Action(){}
	Action(action_type_t type, memory_order order, void *loc, uint64_t value = 0xffff){}

	~Action();
	void print() const;

	int get_tid() const { return tid; }
	action_type get_type() const { return type; }
	memory_order get_mo() const { return order; }
	void * get_location() const { return location; }
	//modelclock_t get_seq_number() const { return seq_number; }
	uint64_t get_value() const { return value; }
	uint64_t get_reads_from_value() const;
	uint64_t get_write_value() const;
	uint64_t get_return_value() const;
	const Action * get_reads_from() const { return reads_from; }
	//Promise * get_reads_from_promise() const { return reads_from_promise; }
	//std::mutex * get_mutex() const;
	void set_value(uint64_t val) {value = val;}

private:

	const char * get_type_str() const;
	const char * get_mo_str() const;

	/** @brief Type of action (read, write, RMW, fence, thread create, etc.) */
	action_type type;

	/** @brief The memory order for this operation. */
	memory_order order;

	/** @brief A pointer to the memory location for this action. */
	void *location;

	/** @brief The thread id that performed this action. */
	int tid;

	/** @brief The value written (for write or RMW; undefined for read) */
	uint64_t value;

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
	 * @brief A back reference to a Node in NodeStack
	 *
	 * Only set if this Action is saved on the NodeStack. (A
	 * Action can be thrown away before it ever enters the NodeStack.)
	 */
	//Node *node;

	/**
	 * @brief The sequence number of this action
	 *
	 * Except for ATOMIC_UNINIT actions, this number should be unique and
	 * should represent the action's position in the execution order.
	 */
	//modelclock_t seq_number;

	/**
	 * @brief The clock vector for this operation
	 *
	 * Technically, this is only needed for potentially synchronizing
	 * (e.g., non-relaxed) operations, but it is very handy to have these
	 * vectors for all operations.
	 */
	//ClockVector *cv;

	bool sleep_flag;
};

