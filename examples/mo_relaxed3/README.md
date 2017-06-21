# Relaxed ordering
Atomic operations tagged memory_order_relaxed are not synchronization operations; they do not impose an order among concurrent memory accesses. They only guarantee atomicity and modification order consistency.

# Expected output:
The assertion may be violated.
