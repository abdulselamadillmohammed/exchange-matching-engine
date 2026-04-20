CC = gcc

CFLAGS = -Wall -std=c99 -O2
#Link time flags
LDFLAGS =
#For the math library (incase I need extra tools)
LIBS = -lm


TARGET = exchangeMatchingEngine

SRC = main.c signal_handlers.c
HEADERS = signal_handlers.h
OBJ = $(SRC:.c=.o)

#Default
all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $@ $(LGFLAGS) $(LIBS)

%o: %c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: dist
dist:
	tar -czf exchangeMatchingEngine.tar.gz $(SRC) $(HEADERS) Makefile README.md

.PHONY: clean
clean:
	rm -f $(OBJ) $(TARGET) exchangeMatchingEngine.tar.gz

.PHONY: help
help:
	@echo "Available commands:"
	@echo "make       - builds the project"
	@echo "make clean - remove object files and executable"
	@echo "make dist  - package source files"
	@echo "make help  - prints this command"


