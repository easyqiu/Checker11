SOURCE=Instrument.cpp Executor.cpp Thread.cpp Action.cpp Solver.cpp Util.cpp Z3Solver.cpp ConstraintModelGenerator.cpp
MYPROGRAM=libinstrument.dylib
CC=g++ -dynamiclib

all: $(MYPROGRAM)

$(MYPROGRAM): $(SOURCE)
	$(CC) $(SOURCE) -o $(MYPROGRAM)         

clean:
    
	rm -f $(MYPROGRAM)
