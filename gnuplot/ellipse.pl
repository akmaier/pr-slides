#!/usr/bin/perl
use strict;

my @xwerte = ();
my @ywerte = ();
my $anz = 0;
my $xsum = 0;
my $ysum = 0;
while (<stdin>) {
  chomp;
  my ($x, $y) = split /[ \t]/;
  push @xwerte, $x;
  push @ywerte, $y;
  $xsum += $x;
  $ysum += $y;
  $anz++;
}

my $mx = $xsum / $anz;
my $my = $ysum / $anz;

# Kovarianzmatrix
# s1 s3
# s3 s2
my $s1 = 0;
my $s2 = 0;
my $s3 = 0;
foreach my $x (@xwerte) {
  my $y = shift @ywerte;
  $s1 += ($x - $mx) * ($x - $mx);
  $s3 += ($x - $mx) * ($y - $my);
  $s2 += ($y - $my) * ($y - $my);
}
$s1 /= $anz;
$s2 /= $anz;
$s3 /= $anz;

my $a1 = sqrt($s1);
my $a3 = $s3 / $a1;
my $a2 = sqrt($s2 - $a3*$a3);

printf stdout "x(t) = $a1 * cos(2*pi*t) + $mx\n";
printf stdout "y(t) = $a3 * cos(2*pi*t) + $a2 * sin(2*pi*t) + $my\n";

printf stdout "$mx $my\n";
