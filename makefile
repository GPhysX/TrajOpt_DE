#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = %cd%

CC = gcc.exe
CXX = g++.exe
AR = ar.exe
LD = g++.exe
WINDRES = windres.exe

INC = -I H:\\Boost\\boost_1_66_0
CFLAGS = -w -fexceptions ${INC}
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = -static

INC_RELEASE = $(INC)
CFLAGS_RELEASE = $(CFLAGS) -Ofast
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE = $(LDFLAGS) -s
OBJDIR_RELEASE = obj\\Release
DEP_RELEASE = 
OUT_RELEASE = bin\\Release\\Simple_DE.exe

OBJ_RELEASE = $(OBJDIR_RELEASE)\\params_reader.o $(OBJDIR_RELEASE)\\main.o $(OBJDIR_RELEASE)\\jpleph.o $(OBJDIR_RELEASE)\\de_solver.o $(OBJDIR_RELEASE)\\de_func.o $(OBJDIR_RELEASE)\\cost_fn_print.o $(OBJDIR_RELEASE)\\cost_fn.o $(OBJDIR_RELEASE)\\agent_defn.o $(OBJDIR_RELEASE)\\FullTrajSoln.o $(OBJDIR_RELEASE)\\3bodyfunction.o $(OBJDIR_RELEASE)\\Wrapper_JPL_Ephem.o $(OBJDIR_RELEASE)\\varIsp_func.o

all: release

clean: clean_release

before_release: 
	cmd /c if not exist bin\\Release md bin\\Release
	cmd /c if not exist $(OBJDIR_RELEASE) md $(OBJDIR_RELEASE)

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)\\params_reader.o: params_reader.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c params_reader.cpp -o $(OBJDIR_RELEASE)\\params_reader.o

$(OBJDIR_RELEASE)\\main.o: main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c main.cpp -o $(OBJDIR_RELEASE)\\main.o

$(OBJDIR_RELEASE)\\jpleph.o: jpleph.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c jpleph.cpp -o $(OBJDIR_RELEASE)\\jpleph.o

$(OBJDIR_RELEASE)\\de_solver.o: de_solver.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c de_solver.cpp -o $(OBJDIR_RELEASE)\\de_solver.o

$(OBJDIR_RELEASE)\\de_func.o: de_func.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c de_func.cpp -o $(OBJDIR_RELEASE)\\de_func.o

$(OBJDIR_RELEASE)\\cost_fn_print.o: cost_fn_print.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c cost_fn_print.cpp -o $(OBJDIR_RELEASE)\\cost_fn_print.o

$(OBJDIR_RELEASE)\\cost_fn.o: cost_fn.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c cost_fn.cpp -o $(OBJDIR_RELEASE)\\cost_fn.o

$(OBJDIR_RELEASE)\\agent_defn.o: agent_defn.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c agent_defn.cpp -o $(OBJDIR_RELEASE)\\agent_defn.o

$(OBJDIR_RELEASE)\\FullTrajSoln.o: FullTrajSoln.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c FullTrajSoln.cpp -o $(OBJDIR_RELEASE)\\FullTrajSoln.o

$(OBJDIR_RELEASE)\\3bodyfunction.o: 3bodyfunction.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c 3bodyfunction.cpp -o $(OBJDIR_RELEASE)\\3bodyfunction.o

$(OBJDIR_RELEASE)\\Wrapper_JPL_Ephem.o: Wrapper_JPL_Ephem.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Wrapper_JPL_Ephem.cpp -o $(OBJDIR_RELEASE)\\Wrapper_JPL_Ephem.o

$(OBJDIR_RELEASE)\\varIsp_func.o: varIsp_func.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c varIsp_func.cpp -o $(OBJDIR_RELEASE)\\varIsp_func.o
	
clean_release: 
	cmd /c del /f $(OBJ_RELEASE) $(OUT_RELEASE)
	cmd /c rd bin\\Release
	cmd /c rd $(OBJDIR_RELEASE)

.PHONY: before_release after_release clean_release

