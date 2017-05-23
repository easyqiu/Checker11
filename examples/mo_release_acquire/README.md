# Release-Acquire ordering
If an atomic store in thread A is tagged memory_order_release and an atomic load in thread B from the same variable is tagged memory_order_acquire, all memory writes (non-atomic and relaxed atomic) that happened-before the atomic store from the point of view of thread A, become visible side-effects in thread B, that is, once the atomic load is completed, thread B is guaranteed to see everything thread A wrote to memory.

# Output
The two assertions will never violated. 
