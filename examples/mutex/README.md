# Mutex
The mutex class is a synchronization primitive that can be used to protect shared data from being simultaneously accessed by multiple threads. 

The class lock_guard is a mutex wrapper that provides a convenient RAII-style mechanism for owning a mutex for the duration of a scoped block.
When a lock_guard object is created, it attempts to take ownership of the mutex it is given. When control leaves the scope in which the lock_guard object was created, the lock_guard is destructed and the mutex is released.
The lock_guard class is non-copyable.

# Possible Output
main: 0
139784194881280: 1
139784186488576: 2
main: 2
