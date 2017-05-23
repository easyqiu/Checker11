# Relaxed ordering
Atomic operations tagged memory_order_relaxed are not synchronization operations; they do not impose an order among concurrent memory accesses. They only guarantee atomicity and modification order consistency.

Atomic variable 'cnt' will be atomically and sequentially increased by 10 threads. 

# Expected output:
Final counter value is 10000
