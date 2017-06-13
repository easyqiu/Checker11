Generate a new Execuctor: 0x7fc920404dd0
Reading Prefix: 
Solver path: /usr/local/bin/z3
Formula file: /Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2/formulaFile
command: /usr/local/bin/z3 -smt2 -in 
[Solver] Init solver...
[Solver] create Z3 pid 73634
Create a Schedule: 0x7fc920500000
In atomic preStore: 0x10e1ee0d8 0 7!
test in RWAction: 0 7 4
In atomic preStore: 0x10e1ee0dc 0 7!
test in RWAction: 0 7 4
In atomic preStore: 0x10e1ee0d8 10 5!
In atomic preLoad: 0x10e1ee0d8 4test in RWAction: !
10In atomic preLoad: test in RWAction:  0x10e1ee0d8655355   442!
 
test in RWAction: 1In atomic preStore: 65535
0x10e1ee0dc  410In atomic postLoad int:   0x10e1ee0d851 !

10test in RWAction: In atomic postLoad int: 10 0x10e1ee0d8 4 5!
10  In atomic preLoad: 240x10e1ee0dc
!
 print trace: 4In atomic preLoad: 0x7fc920600000!
0x10e1ee0dc test in RWAction:  f1655354  !
0x10e6040004test in RWAction:   6553541 

4 In atomic postLoad int: 0x10e1ee0dc1 
10In atomic postLoad int: 0x10e1ee0dc  104 !
4!
print trace: 0x7fc920500590 f2 0x10e687000 4
print trace: 0x7fc920700000 f3 0x10e70a000 4
print trace: 0x7fc920500030 main 0x10e581000 7
get sch: 0x7fc920500000
Generating: 0x7fc9205006c0 0x7fc920500260 ARead 0x10e1ee0d8 1 10
 AWrite 0x10e1ee0d8 4 0

Opening file: /Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2/formulaFile0
Adding Binary HB constraints: /Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2/formulaFile0
declare: RF_f2-1_main-1 (declare-const RF_f2-1_main-1 Int)

declare: B_f2-1_main-1 (declare-const B_f2-1_main-1 Int)

location: 0x10e1ee0d8 0x10e1ee0d8 0x10e1ee0d8
read: ARead 0x10e1ee0d8 1 10

write: AWrite 0x10e1ee0d8 4 0

write2: AWrite 0x10e1ee0d8 2 10

declare: B_main-1_f1-1 (declare-const B_main-1_f1-1 Int)

declare: B_f1-1_f2-1 (declare-const B_f1-1_f2-1 Int)

[Solver] Model Satisfiability: sat
[Solver] Solution found in 0s:

Solution Value: 
B_f1-0_f1-1 1
B_f1-0_f1-2 1
B_f1-0_f1-3 1
B_f1-1_f1-2 1
B_f1-1_f1-3 1
B_f1-1_f2-1 1
B_f1-2_f1-3 1
B_f2-0_f2-1 1
B_f2-0_f2-2 1
B_f2-0_f2-3 1
B_f2-1_f2-2 1
B_f2-1_f2-3 1
B_f2-1_main-1 2
B_f2-2_f2-3 1
B_f3-0_f3-1 1
B_f3-0_f3-2 1
B_f3-0_f3-3 1
B_f3-1_f3-2 1
B_f3-1_f3-3 1
B_f3-2_f3-3 1
B_main-0_main-1 1
B_main-0_main-2 1
B_main-0_main-3 1
B_main-0_main-4 1
B_main-0_main-5 1
B_main-0_main-6 1
B_main-1_f1-1 2
B_main-1_main-2 1
B_main-1_main-3 1
B_main-1_main-4 1
B_main-1_main-5 1
B_main-1_main-6 1
B_main-2_main-3 1
B_main-2_main-4 1
B_main-2_main-5 1
B_main-2_main-6 1
B_main-3_main-4 1
B_main-3_main-5 1
B_main-3_main-6 1
B_main-4_main-5 1
B_main-4_main-6 1
B_main-5_main-6 1
RF_f2-1_main-1 1
Create a Schedule: 0x7fc9207010d0
handle: B_f1-0_f1-1 1
handle: B_f1-0_f1-2 1
handle: B_f1-0_f1-3 1
handle: B_f1-1_f1-2 1
handle: B_f1-1_f1-3 1
handle: B_f1-1_f2-1 1
handle: B_f1-2_f1-3 1
handle: B_f2-0_f2-1 1
handle: B_f2-0_f2-2 1
handle: B_f2-0_f2-3 1
handle: B_f2-1_f2-2 1
handle: B_f2-1_f2-3 1
handle: B_f2-1_main-1 2
handle: B_f2-2_f2-3 1
handle: B_f3-0_f3-1 1
handle: B_f3-0_f3-2 1
handle: B_f3-0_f3-3 1
handle: B_f3-1_f3-2 1
handle: B_f3-1_f3-3 1
handle: B_f3-2_f3-3 1
handle: B_main-0_main-1 1
handle: B_main-0_main-2 1
handle: B_main-0_main-3 1
handle: B_main-0_main-4 1
handle: B_main-0_main-5 1
handle: B_main-0_main-6 1
handle: B_main-1_f1-1 2
handle: B_main-1_main-2 1
handle: B_main-1_main-3 1
handle: B_main-1_main-4 1
handle: B_main-1_main-5 1
handle: B_main-1_main-6 1
handle: B_main-2_main-3 1
handle: B_main-2_main-4 1
handle: B_main-2_main-5 1
handle: B_main-2_main-6 1
handle: B_main-3_main-4 1
handle: B_main-3_main-5 1
handle: B_main-3_main-6 1
handle: B_main-4_main-5 1
handle: B_main-4_main-6 1
handle: B_main-5_main-6 1
handle: RF_f2-1_main-1 1
action: main 1 AWrite 0x10e1ee0d8 4 0

write: 0x7fc920500260
Generating: 0x7fc920700140 0x7fc920500260 ARead 0x10e1ee0d8 1 10
 AWrite 0x10e1ee0d8 4 0

Opening file: /Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2/formulaFile1
Adding Binary HB constraints: /Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2/formulaFile1
declare: RF_f3-1_main-1 (declare-const RF_f3-1_main-1 Int)

declare: B_f3-1_main-1 (declare-const B_f3-1_main-1 Int)

location: 0x10e1ee0d8 0x10e1ee0d8 0x10e1ee0d8
read: ARead 0x10e1ee0d8 1 10

write: AWrite 0x10e1ee0d8 4 0

write2: AWrite 0x10e1ee0d8 2 10

declare: B_main-1_f1-1 (declare-const B_main-1_f1-1 Int)

declare: B_f1-1_f3-1 (declare-const B_f1-1_f3-1 Int)

[Solver] Model Satisfiability: sat
[Solver] Solution found in 0s:

Solution Value: 
B_f1-0_f1-1 1
B_f1-0_f1-2 1
B_f1-0_f1-3 1
B_f1-1_f1-2 1
B_f1-1_f1-3 1
B_f1-1_f3-1 1
B_f1-2_f1-3 1
B_f2-0_f2-1 1
B_f2-0_f2-2 1
B_f2-0_f2-3 1
B_f2-1_f2-2 1
B_f2-1_f2-3 1
B_f2-2_f2-3 1
B_f3-0_f3-1 1
B_f3-0_f3-2 1
B_f3-0_f3-3 1
B_f3-1_f3-2 1
B_f3-1_f3-3 1
B_f3-1_main-1 2
B_f3-2_f3-3 1
B_main-0_main-1 1
B_main-0_main-2 1
B_main-0_main-3 1
B_main-0_main-4 1
B_main-0_main-5 1
B_main-0_main-6 1
B_main-1_f1-1 2
B_main-1_main-2 1
B_main-1_main-3 1
B_main-1_main-4 1
B_main-1_main-5 1
B_main-1_main-6 1
B_main-2_main-3 1
B_main-2_main-4 1
B_main-2_main-5 1
B_main-2_main-6 1
B_main-3_main-4 1
B_main-3_main-5 1
B_main-3_main-6 1
B_main-4_main-5 1
B_main-4_main-6 1
B_main-5_main-6 1
RF_f3-1_main-1 1
Create a Schedule: 0x7fc9204057f0
handle: B_f1-0_f1-1 1
handle: B_f1-0_f1-2 1
handle: B_f1-0_f1-3 1
handle: B_f1-1_f1-2 1
handle: B_f1-1_f1-3 1
handle: B_f1-1_f3-1 1
handle: B_f1-2_f1-3 1
handle: B_f2-0_f2-1 1
handle: B_f2-0_f2-2 1
handle: B_f2-0_f2-3 1
handle: B_f2-1_f2-2 1
handle: B_f2-1_f2-3 1
handle: B_f2-2_f2-3 1
handle: B_f3-0_f3-1 1
handle: B_f3-0_f3-2 1
handle: B_f3-0_f3-3 1
handle: B_f3-1_f3-2 1
handle: B_f3-1_f3-3 1
handle: B_f3-1_main-1 2
handle: B_f3-2_f3-3 1
handle: B_main-0_main-1 1
handle: B_main-0_main-2 1
handle: B_main-0_main-3 1
handle: B_main-0_main-4 1
handle: B_main-0_main-5 1
handle: B_main-0_main-6 1
handle: B_main-1_f1-1 2
handle: B_main-1_main-2 1
handle: B_main-1_main-3 1
handle: B_main-1_main-4 1
handle: B_main-1_main-5 1
handle: B_main-1_main-6 1
handle: B_main-2_main-3 1
handle: B_main-2_main-4 1
handle: B_main-2_main-5 1
handle: B_main-2_main-6 1
handle: B_main-3_main-4 1
handle: B_main-3_main-5 1
handle: B_main-3_main-6 1
handle: B_main-4_main-5 1
handle: B_main-4_main-6 1
handle: B_main-5_main-6 1
handle: RF_f3-1_main-1 1
action: main 1 AWrite 0x10e1ee0d8 4 0

write: 0x7fc920500260
Generating: 0x7fc920700330 0x7fc920500310 ARead 0x10e1ee0dc 1 10
 AWrite 0x10e1ee0dc 4 0

Opening file: /Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2/formulaFile2
Adding Binary HB constraints: /Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2/formulaFile2
declare: RF_f2-1_f1-1 (declare-const RF_f2-1_f1-1 Int)

declare: B_f2-1_f1-1 (declare-const B_f2-1_f1-1 Int)

location: 0x10e1ee0d8 0x10e1ee0d8 0x10e1ee0d8
read: ARead 0x10e1ee0d8 1 10

write: AWrite 0x10e1ee0d8 2 10

write2: AWrite 0x10e1ee0d8 4 0

declare: B_f1-1_main-1 (declare-const B_f1-1_main-1 Int)

declare: B_main-1_f2-1 (declare-const B_main-1_f2-1 Int)

declare: RF_f2-2_main-2 (declare-const RF_f2-2_main-2 Int)

declare: B_f2-2_main-2 (declare-const B_f2-2_main-2 Int)

location: 0x10e1ee0dc 0x10e1ee0dc 0x10e1ee0dc
read: ARead 0x10e1ee0dc 1 10

write: AWrite 0x10e1ee0dc 4 0

write2: AWrite 0x10e1ee0dc 2 10

declare: B_main-2_f1-2 (declare-const B_main-2_f1-2 Int)

declare: B_f1-2_f2-2 (declare-const B_f1-2_f2-2 Int)

[Solver] Model Satisfiability: sat
[Solver] Solution found in 0s:

Solution Value: 
B_f1-0_f1-1 1
B_f1-0_f1-2 1
B_f1-0_f1-3 1
B_f1-1_f1-2 1
B_f1-1_f1-3 1
B_f1-1_main-1 2
B_f1-2_f1-3 1
B_f1-2_f2-2 1
B_f2-0_f2-1 1
B_f2-0_f2-2 1
B_f2-0_f2-3 1
B_f2-1_f1-1 2
B_f2-1_f2-2 1
B_f2-1_f2-3 1
B_f2-2_f2-3 1
B_f2-2_main-2 2
B_f3-0_f3-1 1
B_f3-0_f3-2 1
B_f3-0_f3-3 1
B_f3-1_f3-2 1
B_f3-1_f3-3 1
B_f3-2_f3-3 1
B_main-0_main-1 1
B_main-0_main-2 1
B_main-0_main-3 1
B_main-0_main-4 1
B_main-0_main-5 1
B_main-0_main-6 1
B_main-1_f2-1 1
B_main-1_main-2 1
B_main-1_main-3 1
B_main-1_main-4 1
B_main-1_main-5 1
B_main-1_main-6 1
B_main-2_f1-2 2
B_main-2_main-3 1
B_main-2_main-4 1
B_main-2_main-5 1
B_main-2_main-6 1
B_main-3_main-4 1
B_main-3_main-5 1
B_main-3_main-6 1
B_main-4_main-5 1
B_main-4_main-6 1
B_main-5_main-6 1
RF_f2-1_f1-1 1
RF_f2-2_main-2 1
Create a Schedule: 0x7fc920701140
handle: B_f1-0_f1-1 1
handle: B_f1-0_f1-2 1
handle: B_f1-0_f1-3 1
handle: B_f1-1_f1-2 1
handle: B_f1-1_f1-3 1
handle: B_f1-1_main-1 2
handle: B_f1-2_f1-3 1
handle: B_f1-2_f2-2 1
handle: B_f2-0_f2-1 1
handle: B_f2-0_f2-2 1
handle: B_f2-0_f2-3 1
handle: B_f2-1_f1-1 2
handle: B_f2-1_f2-2 1
handle: B_f2-1_f2-3 1
handle: B_f2-2_f2-3 1
handle: B_f2-2_main-2 2
handle: B_f3-0_f3-1 1
handle: B_f3-0_f3-2 1
handle: B_f3-0_f3-3 1
handle: B_f3-1_f3-2 1
handle: B_f3-1_f3-3 1
handle: B_f3-2_f3-3 1
handle: B_main-0_main-1 1
handle: B_main-0_main-2 1
handle: B_main-0_main-3 1
handle: B_main-0_main-4 1
handle: B_main-0_main-5 1
handle: B_main-0_main-6 1
handle: B_main-1_f2-1 1
handle: B_main-1_main-2 1
handle: B_main-1_main-3 1
handle: B_main-1_main-4 1
handle: B_main-1_main-5 1
handle: B_main-1_main-6 1
handle: B_main-2_f1-2 2
handle: B_main-2_main-3 1
handle: B_main-2_main-4 1
handle: B_main-2_main-5 1
handle: B_main-2_main-6 1
handle: B_main-3_main-4 1
handle: B_main-3_main-5 1
handle: B_main-3_main-6 1
handle: B_main-4_main-5 1
handle: B_main-4_main-6 1
handle: B_main-5_main-6 1
handle: RF_f2-1_f1-1 1
action: f1 1 AWrite 0x10e1ee0d8 2 10

write: 0x7fc920600140
handle: RF_f2-2_main-2 1
action: main 2 AWrite 0x10e1ee0dc 4 0

write: 0x7fc920500310
Generating: 0x7fc9207003d0 0x7fc920500310 ARead 0x10e1ee0dc 1 10
 AWrite 0x10e1ee0dc 4 0

Opening file: /Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2/formulaFile3
Adding Binary HB constraints: /Users/aser/Dropbox/papers/C++11/Checker11/examples/mo_relaxed2/formulaFile3
declare: RF_f3-1_f1-1 (declare-const RF_f3-1_f1-1 Int)

declare: B_f3-1_f1-1 (declare-const B_f3-1_f1-1 Int)

location: 0x10e1ee0d8 0x10e1ee0d8 0x10e1ee0d8
read: ARead 0x10e1ee0d8 1 10

write: AWrite 0x10e1ee0d8 2 10

write2: AWrite 0x10e1ee0d8 4 0

declare: B_f1-1_main-1 (declare-const B_f1-1_main-1 Int)

declare: B_main-1_f3-1 (declare-const B_main-1_f3-1 Int)

declare: RF_f3-2_main-2 (declare-const RF_f3-2_main-2 Int)

declare: B_f3-2_main-2 (declare-const B_f3-2_main-2 Int)

location: 0x10e1ee0dc 0x10e1ee0dc 0x10e1ee0dc
read: ARead 0x10e1ee0dc 1 10

write: AWrite 0x10e1ee0dc 4 0

write2: AWrite 0x10e1ee0dc 2 10

declare: B_main-2_f1-2 (declare-const B_main-2_f1-2 Int)

declare: B_f1-2_f3-2 (declare-const B_f1-2_f3-2 Int)

[Solver] Model Satisfiability: sat
