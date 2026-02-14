all: main

main: main.c
	$(CC) $^ -lhello $(LDFLAGS) -o $@

clean:
	rm -rf main
