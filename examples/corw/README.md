# CoRW
It requires that a read that is sequenced before a write should not be able to read from a later write in modification order.

# Output
The assertion will never be violated. 
In addition, variable 'data' can not read value '1' if the write in 'f1' is a latter write in 'f2' in modification order.
