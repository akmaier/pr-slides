#!/usr/bin/perl
use strict;

my $anz = shift @ARGV;
my $s1 = shift @ARGV;
my $s2 = shift @ARGV;
my $s3 = shift @ARGV;
my $mx = shift @ARGV;
my $my = shift @ARGV;

# Kovarianzmatrix
# s1 s3
# s3 s2

$anz = 10 unless $anz ne "";
$s1 = 1 unless $s1 ne "";
$s2 = 1 unless $s2 ne "";
$s3 = 0 unless $s3 ne "";
$mx = 0 unless $mx ne "";
$my = 0 unless $mx ne "";

my $a1 = sqrt($s1);
my $a3 = $s3 / $a1;
my $a2 = sqrt($s2 - $a3*$a3);

printf stderr "x(t) = $a1 * cos(2*pi*t) + $mx\n";
printf stderr "y(t) = $a3 * cos(2*pi*t) + $a2 * sin(2*pi*t) + $my\n";

my $pi = 3.141592653589793;

srand(time);
for (my $i = 0; $i < $anz; $i++) {
  my $u1 = rand();
  my $u2 = rand();
  my $v1 = rand();
  my $v2 = rand();

  my $x = sqrt(-2*log($u1)) * cos(2*$pi*$u2);
  my $y = sqrt(-2*log($v1)) * cos(2*$pi*$v2);
 
  my $X = $a1 * $x + $mx;
  my $Y = $a3 * $x + $a2 * $y + $my;
    
  print "$X $Y\n";
}
