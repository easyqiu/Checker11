//
// Created by aser on 6/8/17.
//

#ifndef INSTRUMENT_UTIL_H
#define INSTRUMENT_UTIL_H

#include <string>
#include <map>
#include <sys/types.h>

namespace util{

    void saveVarValues2File(std::string filename, std::map<std::string, std::string> mapValues); // store a map in a file
    std::map<std::string, std::string> loadVarValuesFromFile(std::string filename); // load map from a file
    std::string threadTabsPP(int tab);               //add 3x(thread_ID) to a better PP
    std::string stringValueOf(int64_t i);                           //transforms an int into a string
    int intValueOf(std::string i);                           //transforms a string into an int
    pid_t popen2(const char *command, int *infp, int *outfp);   //similar to popen, but allows for bidirectional communication
    void print_state (const std::ios& stream);                  //prints the error flags when an attempt to open a file fails
    std::string extractFileBasename(std::string name);          //from a path to file like a/b/c.txt, extracts the basename c.txt
    std::string extractFileBasename(char* path);                //from a path to file like a/b/c.txt, extracts the basename c.txt
    bool isClosedExpression(std::string expr);                  //returns true if an expression is closed, i.e. its number of '(' == number of ')'
    const std::string getcwd();                           //returns the path of the current working directory


    std::string parseVar(std::string operation);       //parses the variable of an operation
}

#endif //INSTRUMENT_UTIL_H
