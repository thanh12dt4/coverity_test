#----------------------------------------------------------------------------
# COMPILE macros
#----------------------------------------------------------------------------
.c.o:
	$(CC) $(CFLAGS) -c $*.c

CFLAGS	=

#----------------------------------------------------------------------------
# Make the program...
#----------------------------------------------------------------------------
OBJS =  \
	main.o

LIBS =
PROG = coverity_test

all:	$(PROG)

$(PROG): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(PROG) $(LIBS)

#----------------------------------------------------------------------------
# Clean object files and executable file
#----------------------------------------------------------------------------
clean:
	rm -f *.o $(PROG)

