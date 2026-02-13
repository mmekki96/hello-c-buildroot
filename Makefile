CC=gcc
LDFLAGS=-c

all : main

main : hello.o main.o
	${CC} $^ -o $@

%.o : %.c
	${CC} ${LDFLAGS} $^

clean :
	rm -r *.o main
