#!/usr/bin/perl
use strict;

my $pi = 3.141592653589793;

for (my $i = 0; $i < 50; $i++) {
  my $alpha = 2 * $pi * $i / 50;
  my $x = cos($alpha);
  my $y = sin($alpha);
  print "$x $y\n"
}

my $alpha = $pi/2 - 2 * $pi / 12 * (2 + 25/60);
for (my $i = 1; $i <= 10; $i++) {
  my $r = 0.6 * $i / 10;
  my $x = $r * cos($alpha);
  my $y = $r * sin($alpha);
  print "$x $y\n"
}

my $alpha = $pi/2 - 2 * $pi / 60 * 25;
for (my $i = 1; $i <= 10; $i++) {
  my $r = 0.8 * $i / 10;
  my $x = $r * cos($alpha);
  my $y = $r * sin($alpha);
  print "$x $y\n"
}

print "0 0\n";
$alpha = $pi/2 - 2 * $pi / 60 * 20;
my $x = cos($alpha);
my $y = sin($alpha);
print "$x $y\n";
