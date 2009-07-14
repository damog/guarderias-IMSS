#!/usr/bin/perl

use Modern::Perl;
use YAML::Syck;
use Storable;

opendir(my $dir, "save") or die "Couldn't open it :(";

my $y = [];

for my $d (readdir($dir)) {
	next unless $d =~ /^_s___/;
	
	for my $r (@{ retrieve $d }) {
		push @$y, $r;
	}
}

DumpFile('dump.yaml', $y);
