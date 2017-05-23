# Sequential consistent ordering
This example demonstrates a situation where sequential ordering is necessary. Any other ordering may trigger the assert because it would be possible for the threads c and d to observe changes to the atomics x and y in opposite order.

#Output
The assertion will never be violated. 
