g++ -dynamiclib Instrument.cpp Executor.cpp Thread.cpp Action.cpp Solver.cpp Parameters.cpp Schedule.cpp Util.cpp Z3Solver.cpp ConstraintModelGenerator.cpp -o libinstrument.dylib         
Instrument.cpp:20:13: warning: 'getThreadName' has C-linkage specified, but returns user-defined type 'std::string' (aka 'basic_string<char, char_traits<char>, allocator<char> >') which is incompatible with C [-Wreturn-type-c-linkage]
std::string getThreadName(std::thread::id id) {
            ^
1 warning generated.
Undefined symbols for architecture x86_64:
  "checker::formulaFile", referenced from:
      checker::Solver::Solver(checker::Executor*) in Solver-873ba9.o
      checker::saveScheduleFile(std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, std::__1::vector<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > > > const&) in Schedule-dd3421.o
      checker::Z3Solver::openOutputFile() in Z3Solver-150c83.o
      checker::Z3Solver::openInputFile() in Z3Solver-150c83.o
      checker::Z3Solver::solve() in Z3Solver-150c83.o
      checker::Z3Solver::solveWithSolution(std::__1::vector<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >, std::__1::allocator<std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > > >, bool) in Z3Solver-150c83.o
ld: symbol(s) not found for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [libinstrument.dylib] Error 1
