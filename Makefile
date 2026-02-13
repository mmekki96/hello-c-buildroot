all: main

main: hello.o main.o
	${CC} $^ -o $@

%.o: %.c
	${CC} -c  $^

clean:
	rm -r *.o main
