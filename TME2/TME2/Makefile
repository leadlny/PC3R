CC=gcc
CFLAGS=-Wall --std=c99 -pedantic
OBJ=main.c
LIB=./ft_v1.0/src/libfthread.a
LDFLAGS=-lpthread

exe: $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) $(LIB) -o exe $(LDFLAGS)


clean:
	rm -f *.o
	rm -f exe
	rm -f *~
