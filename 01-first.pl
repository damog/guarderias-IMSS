#!/usr/bin/perl

use Modern::Perl;
use WWW::Mechanize;
use Data::Dumper;
use LWP::UserAgent;

my $url = 'http://aplicaciones.imss.gob.mx/guarderias/principal.htm';

my $cont = qq#callCount=1
page=/guarderias/principal.htm
httpSessionId=gv18KV2PHQpchPnqKlvxFvGLDQpH7Jb3Q7V2lpL2yjdTk7v5CbM0!-930848339
scriptSessionId=00E7DF32BED59AAD2B0439F4F3F70CB0388
c0-scriptName=Guarderia
c0-methodName=obtenerGuarderias
c0-id=0
c0-e1=string:XXXXXX
c0-param0=Object_Object:{nombre:reference:c0-e1}
batchId=2
#;

while(<DATA>) {
	chomp;
	my $edo = $_;
	my $last = $_;
	$edo =~ s/([^A-Za-z0-9])/sprintf("%%%02X", ord($1))/seg;
	
	my $payload = $cont;
	$payload =~ s/XXXXXX/$edo/;
	
	my $ua = new LWP::UserAgent;
	my $req = new HTTP::Request 'POST','http://aplicaciones.imss.gob.mx/guarderias/dwr/call/plaincall/Guarderia.obtenerGuarderias.dwr';
	$req->content($payload);
	
	my $res = $ua->request($req);
	
	open my $fh, ">", '___'.$last or die "Moo! $last: $!";
	print $fh $res->content;
	close $fh;
}


__END__
1 NOROESTE D.F.
2 NORESTE D.F.
3 SUROESTE D.F.
4 SURESTE D.F.
AGUASCALIENTES
BAJA CALIFORNIA NORTE
BAJA CALIFORNIA SUR
CAMPECHE
CHIAPAS
CHIHUAHUA
COAHUILA
COLIMA
DURANGO
ESTADO DE MEXICO ORIENTE
ESTADO DE MEXICO PONIENTE
GUANAJUATO
GUERRERO
HIDALGO
JALISCO
MICHOACAN
MORELOS
NAYARIT
NUEVO LEON
OAXACA
PUEBLA
QUERETARO
QUINTANA ROO
SAN LUIS POTOSI
SINALOA
SONORA
TABASCO
TAMAULIPAS
TLAXCALA
VERACRUZ NORTE
VERACRUZ SUR
YUCATAN
ZACATECAS