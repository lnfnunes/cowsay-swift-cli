prefix ?= /usr/local
bindir = $(prefix)/bin
libdir = $(prefix)/lib

build:
	# disabling the sandbox is necessary for installation with Homebrew
	swift build -c release --disable-sandbox

install: build
	install ".build/release/cowsay" "$(bindir)"

test:
	swift test

uninstall:
	rm -rf "$(bindir)/cowsay"

clean:
	rm -rf .build

.PHONY: build install test uninstall clean
