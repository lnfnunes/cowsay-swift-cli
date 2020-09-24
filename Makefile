prefix ?= /usr/local
bindir = $(prefix)/bin
libdir = $(prefix)/lib

build:
	swift build -c release --disable-sandbox

install: build
	install ".build/release/cowsay" "$(bindir)"

uninstall:
	rm -rf "$(bindir)/cowsay"

clean:
	rm -rf .build

.PHONY: build install uninstall clean
