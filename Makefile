CC = gcc

CFLAGS = -Wall -std=c99 -O2
#Link time flags
LDFLAGS =
#For the math library (incase I need extra tools)
LIBS = -lm


TARGET = exchangeMatchingEngine

SRC = main.c
OBJ = $(SRC:.c=.o)

#Default
all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $@ $(LGFLAGS) $(LIBS)

%o: %c
	$(CC) $(CFLAGS) -c $< -o $@


.PHONY
dist:
	# includes the source files and Makefilee
	tar -czf monitor.tar.gz $(SRC) Makefile

.PHONY
clean:
	rm -f $(OBJ) $(TARGET)

.PHONY
help:
	@echo "Available"
	@echo "make       - compiles the project"
	@echo "make clean - cleans the dir"
	@echo "make help  - outputs this command"
	@echo "make dist  - packages the project"
