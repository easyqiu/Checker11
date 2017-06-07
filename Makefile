SOURCE=Instrument.cpp Executor.cpp Thread.cpp Action.cpp
MYPROGRAM=libinstrument.dylib
# MYINCLUDES=/home/scale/g++Projects/gLib/
# MYLIBRARIES=fltk
CC=g++ -dynamiclib

all: $(MYPROGRAM)

$(MYPROGRAM): $(SOURCE)
	$(CC) $(SOURCE) -o $(MYPROGRAM)          # -l$(MYLIBRARIES)

clean:
    
	rm -f $(MYPROGRAM)
