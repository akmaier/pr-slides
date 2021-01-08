#!/usr/bin/perl
use strict;

for (my $i = 0; $i < 1000; $i++) {
  my $s1 = 2 * sqrt(3) * (rand() - 0.5);
  my $s2 = 2 * sqrt(3) * (rand() - 0.5);

  my $x1 = 2 * $s1 + 3 * $s2;
  my $x2 = 2 * $s1 + $s2;

  print "$s1 $s2 $x1 $x2\n";
}
