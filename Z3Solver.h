//
// Created by aser on 6/8/17.
//

#ifndef INSTRUMENT_Z3SOLVER_H
#define INSTRUMENT_Z3SOLVER_H

#include <iostream>
#include <fstream>
#include <vector>
#include <set>

namespace  checker {

    class Executor;
    class Z3Solver {
    private:
        std::string formulaFile;

    protected:
        Executor* exe;
        std::ofstream z3File;                       //z3 output file (containing the symbolic constraint model)
        pid_t z3pid;                                //id of the process running z3
        int procR, procW;                           //pipes to read from and write to the process running z3
        std::vector<std::string> operationsVars;    //vector containing the operation variables
        std::vector<std::string> orderVars;         //vector containing the operation order variables
        std::vector<std::string> rfVars;            //vector containing the operation rf variables
        int numOps;                             //number of operations to ordered
        std::set<std::string> declaredVars;

    public:
        std::vector<std::string> threadIds;          //vector containing the thread ids

        //constructor
        Z3Solver(Executor* exe);

        ~Z3Solver() {}

        //general functions
        bool solve(bool flag);

        bool solveWithSolution(std::vector<std::string> solution, bool invertBugCond);

        void closeZ3();

        bool checkSat();
        bool checkSat1();
        bool checkSat2();

        std::string readLinePipe();

        void openOutputFile();

        void openInputFile();

        void printModel();

        void writeLineZ3(std::string content);

        void clearFormula() { formulaFile = ""; }

        int getNumOps();

        void setNumOps(int n);

        void reset();   //** resets the data structures

        void resetDeclaredVars() { declaredVars.clear(); }

        //Operations over constraints
        std::string cAnd(std::string exp1, std::string exp2);

        std::string cAnd(std::string exp1);

        std::string cOr(std::string exp1, std::string exp2);

        std::string cOr(std::string exp1);

        std::string cEq(std::string exp1, std::string exp2);

        std::string cNeq(std::string exp1, std::string exp2);

        std::string cGeq(std::string exp1, std::string exp2);

        std::string cGt(std::string exp1, std::string exp2);

        std::string cLeq(std::string exp1, std::string exp2);

        std::string cLt(std::string exp1, std::string exp2);

        std::string cLt(std::string exp1);

        std::string cDiv(std::string exp1, std::string exp2);

        std::string cMod(std::string exp1, std::string exp2);

        std::string cPlus(std::string exp1, std::string exp2);

        std::string cMinus(std::string exp1, std::string exp2);

        std::string cMult(std::string exp1, std::string exp2);

        std::string cSummation(std::vector<std::string> sum);

        std::string declareIntVar(std::string varname);

        std::string declareIntVarNE(std::string varname, int val);

        std::string declareIntVarGE(std::string varname, int val);

        std::string declareIntVar(std::string varname, int val);

        std::string declareIntVar(std::string varname, int min, int max);

        std::string declareIntVarAndStore(std::string varname, int val);

        std::string declareIntVarAndStore(std::string varname, int min, int max);

        std::string declareRealVar(std::string varname, int min, int max);

        std::string declareIntOrderVar(std::string varname, int min, int max);

        std::string declareIntRFVarAndStore(std::string varname, int val);

        std::string declareIntOrderVarAndStoreNE(std::string varname, int val);

        std::string declareIntOrderVarAndStore(std::string varname, int val);

        std::string declareIntOrderVarAndStore(std::string varname, int min, int max);

        std::string postAssert(std::string constraint);

        std::string postNamedAssert(std::string constraint, std::string label);

        std::string invertBugCondition(std::string expr);

        std::string cIte(std::string cond, std::string tExpr);

        std::string cIte(std::string cond, std::string tExpr, std::string fExpr);

        void setDeclaredVars(std::set<std::string> vars) { declaredVars.insert(vars.begin(), vars.end()); }

        std::set<std::string> getDeclaredVars() { return declaredVars; }
    };
}

#endif //INSTRUMENT_Z3SOLVER_H
