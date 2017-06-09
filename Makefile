SOURCE=Instrument.cpp Executor.cpp Thread.cpp Action.cpp Solver.cpp Parameters.cpp Schedule.cpp Util.cpp Z3Solver.cpp # ConstraintModelGenerator.cpp
MYPROGRAM=libinstrument.dylib
# MYINCLUDES=/home/scale/g++Projects/gLib/
# MYLIBRARIES=fltk
CC=g++ -dynamiclib

all: $(MYPROGRAM)

$(MYPROGRAM): $(SOURCE)
	$(CC) $(SOURCE) -o $(MYPROGRAM)          # -l$(MYLIBRARIES)

clean:
    
	rm -f $(MYPROGRAM)
