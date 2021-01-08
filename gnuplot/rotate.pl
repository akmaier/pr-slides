#!/usr/bin/perl
use strict;

my $alpha = shift @ARGV;

my $pi = 3.141592653589793;

$alpha = $pi * $alpha / 180;
my $w11 = cos($alpha);
my $w12 = -sin($alpha);
my $w21 = -$w12;
my $w22 = $w11;

while (<stdin>) {
  chomp;
  my ($x1, $x2) = split /[\t ]+/;

  my $y1 = $w11 * $x1 + $w12 * $x2;
  my $y2 = $w21 * $x1 + $w22 * $x2;

  print "$y1 $y2\n";
}
