#!/usr/bin/perl

use Modern::Perl;

opendir(my $dir, ".") or die "Couldn't open it :(";

for my $d (readdir($dir)) {
	next unless $d =~ /^___/;
	say $d;
}