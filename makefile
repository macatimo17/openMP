GCC = gcc
FLAGS = -ansi -pedantic -Wall -std=c99
C_FLAGS = -fopenmp
PROGRAMAS = MM1c MM1f MM2f MM1fu

all: $(PROGRAMAS)

MM1c:
	$(GCC) $(FLAGS) functions1.c -c $(C_FLAGS)
	$(GCC) $(FLAGS) ctime1.c -c $(C_FLAGS)
	$(GCC) $(FLAGS) $@.c -c $(C_FLAGS)
	$(GCC) $(FLAGS) -o $@ $@.o functions1.o ctime1.o $(C_FLAGS)

MM1f:
	$(GCC) $(FLAGS) functions2.c -c $(C_FLAGS)
	$(GCC) $(FLAGS) ctime2.c -c $(C_FLAGS)
	$(GCC) $(FLAGS) $@.c -c $(C_FLAGS)
	$(GCC) $(FLAGS) -o $@ $@.o functions2.o ctime2.o $(C_FLAGS)

MM2f:
	$(GCC) $(FLAGS) functions3.c -c $(C_FLAGS)
	$(GCC) $(FLAGS) ctime3.c -c $(C_FLAGS)
	$(GCC) $(FLAGS) $@.c -c $(C_FLAGS)
	$(GCC) $(FLAGS) -o $@ $@.o functions3.o ctime3.o $(C_FLAGS)

MM1fu:
	$(GCC) $(FLAGS) functions4.c -c $(C_FLAGS)
	$(GCC) $(FLAGS) ctime4.c -c $(C_FLAGS)
	$(GCC) $(FLAGS) $@.c -c $(C_FLAGS)
	$(GCC) $(FLAGS) -o $@ $@.o functions4.o ctime4.o $(C_FLAGS)



clean:
	$(RM) $@ *.o
	$(RM) $@ $
	$(RM) $(PROGRAMAS) $
