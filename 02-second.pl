#!/usr/bin/perl

use Modern::Perl;
use Data::Dumper;
use Storable;

opendir(my $dir, "tmp/") or die "Couldn't open it :(";

for my $d (readdir($dir)) {
	next unless $d =~ /^___/;
	
	open my $fh, 'tmp/'.$d or die $!;

	local $/ = undef;
	my $js = <$fh>;
	local $/ = "\n";
	close $fh;
	
	my(@a) = $js =~ /s(\d+?)\.(\w+?)=(.+?);/gis;
	
	# old C-for! C FTW!

	my $r = [];
	for(my $i = 0; $i < (scalar(@a)); $i += 3) {
		my $v = $a[$i + 2];
		$v =~ s/(^"|"$)//g;
		$v = undef if $v eq 'null';
		
		$r->[$a[$i]]->{$a[$i + 1]} = $v;
		$r->[$a[$i]]->{id} = $a[$i];
	}

	for my $t (@$r) {
		my(@p) = $js =~ /$t->{parameters}\[\d+\]="?(.+?)"?;/gis;
		$t->{parameters} = \@p;
		# say $t->{parameters};
	}

	store $r, 'tmp/_s_'.$d;
	
}