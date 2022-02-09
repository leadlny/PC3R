CC=gcc
CFLAGS=-Wall -ansi -g
OBJ=main.o
LDFLAGS=-lpthread

exe: $(OBJ)
	$(CC) -g -o exe $(OBJ) $(LDFLAGS)

main.o: main.c
	$(CC) -c main.c -o main.o $(CFLAGS)

clean:
	rm -f *.o
	rm -f exe
	rm -f *~