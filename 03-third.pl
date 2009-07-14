#!/usr/bin/perl

use Modern::Perl;
use Storable;
use Data::Dumper;
use LWP::UserAgent;
use JSON::Any;
use YAML::Syck;
use Data::Format::HTML;

my $payload = qq#callCount=1
page=/guarderias/principal.htm
httpSessionId=99J1KW4Mh87DCTkPhyGq1D9DQrp8mzMh83s37b1yTvXRfddy2G6b!1150220279
scriptSessionId=0126FBCF9C8B60B59385787AA4BC30E7714
c0-scriptName=Guarderia
c0-methodName=getDatosDelegacion
c0-id=0
c0-e1=string:XXXXXX
c0-param0=Object_Object:{identificador:reference:c0-e1}
batchId=2#;

-d 'html' && -w 'html' or mkdir 'html';
-d 'save' && -w 'save' or mkdir 'save';

opendir(my $dir, ".") or die "Couldn't open it :(";

my $y = [];

for my $d (readdir($dir)) {
	next unless $d =~ /^_s___/;
	
	-d 'html/'.$d and -w 'html/'.$d or mkdir 'html/'.$d;
		
	my $ref = retrieve $d;
	
	for my $g (@$ref) {
		my $p = $payload;
		$g->{identificador} =~ s/([^A-Za-z0-9])/sprintf("%%%02X", ord($1))/seg;
		$p =~ s/XXXXXX/$g->{identificador}/;
		
		my $ua = new LWP::UserAgent;
		my $j = JSON::Any->new;
		my $req = new HTTP::Request 'POST','http://aplicaciones.imss.gob.mx/guarderias/dwr/call/plaincall/Guarderia.getDatosDelegacion.dwr';
		$req->content($p);

		my $res = $ua->request($req);
		
		$res->content =~ /({.*})/;
		my $struct = $1;
		
		say $g->{identificador};
		
		my(@el) = $struct =~ /(\w+?):"(.*?)"/gis;
		
		my $guarderia = {};
		for (my $i = 0; $i < scalar @el; $i += 2) {
			$guarderia->{$el[$i]} = $el[$i + 1];
		}
		
		$g->{detalle} = $guarderia;
		$g->{identificador} =~ s/\%([A-Fa-f0-9]{2})/pack('C', hex($1))/seg;
		
		push @$y, $g;
		
		my $f = Data::Format::HTML->new;
		open my $fh, ">", 'html/'.$d.'/'.$g->{identificador}.'.html' or die 'boo!';
		print $fh $f->format($g);
		close $fh;

	}
	
	store $ref, 'save/'.$d;
	
	say $d.'!!';
}

DumpFile('dump.yaml', $y);
