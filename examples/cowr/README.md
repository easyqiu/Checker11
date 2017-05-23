# CoWR
It requires that a read that follows a write in sequenced-before should not be able to read from an earlier write in modification order. 

#Output
If the write from 'f2' is a latter write than that from 'f1', then 'data' will never read value '1'. 
