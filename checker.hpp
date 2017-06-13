#include <iostream>
#include <fstream>
#include <sstream>
#include <map>

#include <thread>
#include <sys/types.h>
#include <unistd.h>

#include "Instrument.h"
#include "ModelChecker.h"

using namespace checker;

//ModelChecker* modelChecker;

extern "C" void checker_shared(void*);
extern "C" void thread_begin();
extern "C" int user_main();
/*extern "C" int main() {
    user_main();
    return 0;
}*/
//extern "C" void generateExecutor();

//extern "C" void checker_thread_create(std::thread::id id1, std::thread::id id2) {
//    std::stringstream ss;
//
//    std::cout << "in thread create!\n";
//    ss << id1;
//    std::ofstream outfile(ss.str(), std::ios::app);
//    ss.str("");
//    ss << "thread create: " << id1 << " " << id2 << "\n";
//    outfile << ss.str();
//    std::cout << "FFFFFFFF: T" << ss.str() << "T\n";
//    outfile.flush();
//    outfile.close();
//}
//
//extern "C" void checker_thread_begin(std::thread::id id) {
//    std::stringstream ss;
//    ss.str("");
//    ss << id;
//    std::ofstream outfile(ss.str(), std::ios::app);
//    ss.str("");
//    ss << "thread begin: " << id << "\n";
//    outfile << ss.str();
//    std::cout << "RRRRRRRRRRR: Q" << ss.str() << "Q\n";
//    outfile.flush();
//    outfile.close();
//    thread_begin();
//}
