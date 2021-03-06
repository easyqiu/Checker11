cmake_minimum_required(VERSION 3.8)
project(Checker11)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/..)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/..)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/..)

set(SOURCE_FILES
        Action.cpp
        Action.h
        Buffer.cpp
        Buffer.h
        checker.hpp
        ConstraintModelGenerator.cpp
        ConstraintModelGenerator.h
        DynChecker.h
        Executor.cpp
        Executor.h
        FairState.h
        Instrument.cpp
        Instrument.h
        ModelChecker.cpp
        ModelChecker.h
        Schedule.cpp
        Schedule.h
        Solver.cpp
        Solver.h
        StackFrame.cpp
        StackFrame.h
        SWRelation.cpp
        SWRelation.h
        Thread.cpp
        Thread.h
        Types.h
        Util.cpp
        Util.h
        Z3Solver.cpp
        Z3Solver.h)

add_library(Checker11 SHARED ${SOURCE_FILES})