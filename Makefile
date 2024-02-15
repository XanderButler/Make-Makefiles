# Author: [Xander Butler]
# File Name: Makefile
# Last Date of Modification: [2/15/2024]
# Purpose: Makefile for the employees zip folder.

CC = g++
TARGET = employee
CFLAGS = -c -Wall -Wextra

all: $(TARGET)

$(TARGET): main.o Employee.o Officer.o Supervisor.o
	$(CC) main.o Employee.o Officer.o Supervisor.o -o $(TARGET)

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

Employee.o: Employee.cpp Employee.h
	$(CC) $(CFLAGS) Employee.cpp

Officer.o: Officer.cpp Officer.h
	$(CC) $(CFLAGS) Officer.cpp

Supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) Supervisor.cpp

clean:
	rm -f *.o *~ $(TARGET)
