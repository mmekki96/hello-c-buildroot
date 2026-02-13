MAJOR=1
VER=$(MAJOR).0
LIB=libhello.so

all: main

main: $(LIB) main.o
	$(CC) $^ -L$(shell pwd) -lhello -o $@

$(LIB): hello.o
	$(CC) $< -shared -fPIC -Wl,-soname=$(LIB).$(MAJOR) -o $(LIB).$(VER)
	ln -s $(LIB).$(VER) $(LIB).$(MAJOR)
	ln -s $(LIB).$(MAJOR) $(LIB)

%.o: %.c
	$(CC) -c  $^

clean:
	rm -r *.o *.so* main
