.PHONY: all clean
all:
	@echo "It's a demo execute the commands from README.md"

clean:
	rm -rf build/ fusesoc_libraries/ fusesoc.conf hello.elf
