.POSIX:
.PHONY: cleanall
CC = vagrant ssh -- m68k-atari-mint-gcc
CFLAGS = -O2 -Wl,--traditional-format

all: hello.tos

cleanall:
	rm *.tos

.SUFFIXES: .c .tos

.c.tos:
	$(CC) $(CFLAGS) $< -o $@
