CC = gcc



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
