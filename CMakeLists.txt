cmake_minimum_required(VERSION 3.7)
project(Instrument)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        Action.h
        Executor.h
        Instrument.cpp
        Instrument.h
        Thread.h Executor.cpp Thread.cpp Action.cpp Solver.h Solver.cpp ConstraintModelGenerator.h Z3Solver.h Z3Solver.cpp Util.h Util.cpp Parameters.h Parameters.cpp Schedule.h Schedule.cpp ConstraintModelGenerator.cpp Schedule.h Schedule.cpp libinstrument.dylib.dSYM/ModelChecker.h main.dSYM/SWRelation.h DynChecker.h .idea/Buffer.h .idea/Buffer.cpp.cpp .idea/Buffer.cpp Buffer.cpp StackFrame.h StackFrame.cpp ModelChecker.cpp FairState.h SWRelation.cpp.cpp)

add_executable(Instrument ${SOURCE_FILES})