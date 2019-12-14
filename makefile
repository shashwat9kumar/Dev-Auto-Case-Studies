INCL	= mymath.h	
SRC	= main.c add.c subtract.c multiply.c divide.c
OBJ	= $(SRC:.c=.o)
EXE	= mycalculator		


CC	= /usr/bin/gcc
CFLAGS	= -ansi -pedantic -Wall -O2
LIBPATH	= -L
LDFLAGS	= -o $(EXE) $(LIBPATH) $(LIBS)
CFDEBUG	= -ansi -pedantic -Wall -g -DDEBUG $(LDFLAGS)
RM	= /bin/rm -f

%.o: %.c
	$(CC) -$(CFLAGS) $*.c

$(EXE): $(OBJ)
	$(CC) $(LDFLAGS) $(OBJ)

$(OBJ): $(INCL)

debug:
	$(CC) $(CFDEBUG) $(SRC)

clean:
	$(RM) $(OBJ) $(EXE) core a.out

