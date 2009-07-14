#!/usr/bin/make

clean:
	rm -rf html/ save/
	rm -rf tmp/*

all: clean
	echo "First script..."
	perl 01-first.pl
	
	echo "Second script..."
	perl 02-second.pl
	
	echo "Third script..."
	perl 03-third.pl
