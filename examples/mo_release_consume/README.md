# Release-Consuming ordering
If an atomic store in thread A is tagged memory_order_release and an atomic load in thread B from the same variable is tagged memory_order_consume, all memory writes (non-atomic and relaxed atomic) that are dependency-ordered-before the atomic store from the point of view of thread A, become visible side-effects within those operations in thread B into which the load operation carries dependency, that is, once the atomic load is completed, those operators and functions in thread B that use the value obtained from the load are guaranteed to see what thread A wrote to memory.

This example demonstrates dependency-ordered synchronization for pointer-mediated publication: the integer data is not related to the pointer to string by a data-dependency relationship, thus its value is undefined in the consumer.

# Output
The assert(*p2=="hello") will not be violated.
The assert(data == 42) may or may not be violated.
