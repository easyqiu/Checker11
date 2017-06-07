cmake_minimum_required(VERSION 3.7)
project(Instrument)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        Action.h
        Executor.h
        Instrument.cpp
        Instrument.h
        Thread.h Executor.cpp Thread.cpp Action.cpp)

add_executable(Instrument ${SOURCE_FILES})