#!/usr/bin/perl
use strict;

my $mu = 0;
my $b1 = 0.4;
my $b2 = 0.7;

for (my $i = 0; $i < 2000; $i++) {
  my $x1 = rand() - 0.5;
  my $x2 = rand() - 0.5;

  my $sgn = ($x1 >= 0) ? +1 : -1;
  my $y1 = $mu - $b1 * $sgn * log(1 - 2*abs($x1));
  $sgn = ($x2 >= 0) ? +1 : -1;
  my $y2 = $mu - $b2 * $sgn * log(1 - 2*abs($x2));

  print "$x1 $x2 $y1 $y2\n";
}
