EXE = main
ADA_VERSION = -gnat05
SRC = gpio_raspberrypi.adb main.adb 
INCLUDE = 
FLAGS = -gnato -gnatwa -fstack-check -g

all: 
	gnatmake $(ADA_VERSION) $(FLAGS) $(INCLUDE) $(SRC) 

clean:
	rm *.ali *~ *.o b~* $(EXE)
