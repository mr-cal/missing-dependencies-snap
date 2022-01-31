# -*- Mode: Makefile; indent-tabs-mode:t; tab-width: 4 -*-

CC := g++
CFLAGS := -g -Wall
LD := ld
LIBS := -lpng
PROGRAM := png-dimensions

.PHONY: all
all: $(PROGRAM)

$(PROGRAM): png-dimensions.cpp
	$(CC) $(CFLAGS) png-dimensions.cpp -o $(PROGRAM) $(LIBS)

install: $(PROGRAM)
	install -D -m755 $(PROGRAM) "$(DESTDIR)/bin/$(PROGRAM)"

clean: $(PROGRAM)
	rm $(PROGRAM)
