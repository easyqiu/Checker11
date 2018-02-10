SOURCE=Instrument.cpp Executor.cpp Thread.cpp Action.cpp Solver.cpp Util.cpp Z3Solver.cpp ConstraintModelGenerator.cpp Schedule.cpp Buffer.cpp StackFrame.cpp ModelChecker.cpp SWRelation.cpp
OS := $(shell uname)
ifeq ($(OS), Linux)
		MYPROGRAM=libChecker11.so
		CC=g++ -shared -g -std=c++11 -fPIC # -L./examples/mo_release_acquire3/ -luser
else 
		ifeq ($(OS), Darwin)
				MYPROGRAM=libChecker11.dylib
				CC=g++ -dynamiclib -g -fPIC # -L./examples/mo_release_acquire3/ -luser
		endif
endif

# CC=g++ -dynamiclib -g # -L./examples/mo_release_acquire3/ -luser

all: $(MYPROGRAM)

$(MYPROGRAM): $(SOURCE)
	$(CC) $(SOURCE) -o $(MYPROGRAM)         

clean:
    
	rm -f $(MYPROGRAM)
