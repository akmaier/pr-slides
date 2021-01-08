#!/usr/bin/perl
use strict;

my $pi = 3.141592653589793; 

for (my $lambda = 0.0; $lambda <= 1.0; $lambda += 0.01) {
    my $min = 1000;
    for (my $x = -1; $x <= 1; $x += 0.00001) {
      my $L = 4*$x*$x*$x*$x - 3*$x*$x + $x + 2.5 + $lambda * (-2 * exp(-0.5*$x*$x/0.09) / sqrt(2*$pi) / 0.3 + 1);
      if ($L < $min) {
        $min = $L;
      }
    }
    print "$lambda $min\n";
}
