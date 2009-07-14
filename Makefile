#!/usr/bin/make

clean:
	rm -rf html/ save/
	rm -rf _*

all: clean
	echo "First script..."
	perl 01-first.pl
	echo " ...done"
	
	echo "Second script..."
	perl 02-second.pl
	echo " ...done"
	
	echo "Third script..."
	perl 03-third.pl
	echo " ...done"
