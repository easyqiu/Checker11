SOURCE=Instrument.cpp Executor.cpp Thread.cpp Action.cpp Solver.cpp Util.cpp Z3Solver.cpp ConstraintModelGenerator.cpp Schedule.cpp Buffer.cpp StackFrame.cpp ModelChecker.cpp SWRelation.cpp
MYPROGRAM=libinstrument.dylib
CC=g++ -dynamiclib -g # -L./examples/mo_release_acquire3/ -luser

all: $(MYPROGRAM)

$(MYPROGRAM): $(SOURCE)
	$(CC) $(SOURCE) -o $(MYPROGRAM)         

clean:
    
	rm -f $(MYPROGRAM)
