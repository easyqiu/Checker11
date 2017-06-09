//
// Created by aser on 6/8/17.
//

#include "Parameters.h"

const int MAX_LINE_SIZE = 512;
bool debug = false;
bool bugFixMode = false;
bool jpfMode = false;
bool csr = false;
std::string symbFolderPath = "";
std::string avisoFilePath = "";
std::string solverPath = "";
std::string formulaFile = "";
std::string solutionFile = "";
std::string assertThread = "";
std::string sourceFilePath = "";
std::string dspFlag = "";

bool failedExec = false;


std::map<std::string, std::string > solutionValuesFail;
std::map<std::string, std::string > solutionValuesAlt;
std::map<std::string,std::string> solutionValues;
std::vector<Action*> failScheduleOrd;
std::vector<std::string> altScheduleOrd;
std::map<std::string, std::vector<Action*> > operationsByThread;    //map thread id -> vector with thread's operations



std::vector<int> unsatCore;
std::vector<std::string> bugCondOps;

time_t startTime;
time_t endTime;

int numEventsDifDebug = 0;
int numDepFull = 0;
int numDepDifDebug = 0;
