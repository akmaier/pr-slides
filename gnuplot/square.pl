#!/usr/bin/perl
use strict;

while (<stdin>) {
  chomp;
  my ($x, $y) = split /[\t ]+/;
  $x *= $x;
  $y *= $y;
  print "$x $y\n";
}
