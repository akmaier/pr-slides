#!/usr/bin/perl
use strict;

my $t = shift @ARGV;
my $rate = shift @ARGV;
my $max_k = shift @ARGV;

my $x = 5.0;

for (my $k = 1; $k < $max_k; $k++) {
  my $f = 0.5 * $x * $x;
  print "$x $f\n";
  $x -= $x * $t;
  $t /= $rate;
}
