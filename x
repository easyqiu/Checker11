g++ -dynamiclib Instrument.cpp Executor.cpp Thread.cpp Action.cpp Solver.cpp Parameters.cpp Schedule.cpp Util.cpp Z3Solver.cpp  -o libinstrument.dylib          # -l
Instrument.cpp:20:13: warning: 'getThreadName' has C-linkage specified, but returns user-defined type 'std::string' (aka 'basic_string<char, char_traits<char>, allocator<char> >') which is incompatible with C [-Wreturn-type-c-linkage]
std::string getThreadName(std::thread::id id) {
            ^
1 warning generated.
Schedule.cpp:149:18: error: no matching function for call to 'getTidOperation'
    string tid = getTidOperation(*schedule[initPosition]); //(schedule,initPosition);
                 ^~~~~~~~~~~~~~~
./Schedule.h:19:17: note: candidate function not viable: no known conversion from 'checker::Action' to 'checker::Action *' for 1st argument; remove *
    std::string getTidOperation(Action* op);     //return the operation/action thread ID
                ^
Schedule.cpp:154:20: error: no matching function for call to 'getTidOperation'
        if (tid == getTidOperation(**it))
                   ^~~~~~~~~~~~~~~
./Schedule.h:19:17: note: candidate function not viable: no known conversion from 'checker::Action' to 'checker::Action *' for 1st argument; remove *
    std::string getTidOperation(Action* op);     //return the operation/action thread ID
                ^
Schedule.cpp:204:18: error: no matching function for call to 'getTidOperation'
    string Tid = getTidOperation(*sch[pos]);
                 ^~~~~~~~~~~~~~~
./Schedule.h:19:17: note: candidate function not viable: no known conversion from 'checker::Action' to 'checker::Action *' for 1st argument; remove *
    std::string getTidOperation(Action* op);     //return the operation/action thread ID
                ^
Schedule.cpp:208:26: error: no matching function for call to 'getTidOperation'
        string nextTid = getTidOperation(*sch[pos+1]);
                         ^~~~~~~~~~~~~~~
./Schedule.h:19:17: note: candidate function not viable: no known conversion from 'checker::Action' to 'checker::Action *' for 1st argument; remove *
    std::string getTidOperation(Action* op);     //return the operation/action thread ID
                ^
Schedule.cpp:220:18: error: no matching function for call to 'getTidOperation'
    string Tid = getTidOperation(*sch[pos]);
                 ^~~~~~~~~~~~~~~
./Schedule.h:19:17: note: candidate function not viable: no known conversion from 'checker::Action' to 'checker::Action *' for 1st argument; remove *
    std::string getTidOperation(Action* op);     //return the operation/action thread ID
                ^
Schedule.cpp:224:19: error: no matching function for call to 'getTidOperation'
        nextTid = getTidOperation(**it);
                  ^~~~~~~~~~~~~~~
./Schedule.h:19:17: note: candidate function not viable: no known conversion from 'checker::Action' to 'checker::Action *' for 1st argument; remove *
    std::string getTidOperation(Action* op);     //return the operation/action thread ID
                ^
Schedule.cpp:337:72: error: a space is required between consecutive right angle brackets (use '> >')
void scheduleLIB::fillScheduleOrd(string tid, map<string,vector<Action*>>* op_list, Schedule* sch)
                                                                       ^~
                                                                       > >
7 errors generated.
make: *** [libinstrument.dylib] Error 1
