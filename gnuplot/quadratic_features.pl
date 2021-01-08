#!/usr/bin/perl
use strict;

my $count = shift @ARGV;
my $radius = shift @ARGV;

my $pi = 3.141592653589793;

for (my $i = 0; $i < $count; $i++) {
  my $u = rand();
  my $v = rand();
  my $a = rand();
  my $r = sqrt(-2*log($u)) * cos(2*$pi*$v) + $radius;

  my $x = $r * cos(2*$pi*$a);
  my $y = $r * sin(2*$pi*$a);

  print "$x $y\n";
}
