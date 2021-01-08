#!/usr/bin/perl
use strict;

my $pi = 3.141592653589793;

my @x1_values = ();
my @x2_values = ();
while (<stdin>) {
  chomp;
  my ($x1, $x2) = split /[\t ]+/;
  push @x1_values, $x1;
  push @x2_values, $x2;
}

for (my $i = 0; $i <= 100; $i++) {
  my $alpha = $i * $pi / 100;
  my $w1 = cos($alpha);
  my $w2 = sin($alpha);

  my @y_values = ();
  for (my $j = 0; $j <= $#x1_values; $j++) {
    my $x1 = $x1_values[$j];
    my $x2 = $x2_values[$j];
    my $y = $x1 * $w1 + $x2 * $w2;
    push @y_values, $y;
  }

  my $mean = 0;
  my $sigma = 0;
  for (my $j = 0; $j <= $#y_values; $j++) {
    my $y = $y_values[$j];
    $mean += $y;
    $sigma += ($y * $y);
  }
  $mean /= ($#y_values + 1);
  $sigma = sqrt($sigma / ($#y_values + 1) - $mean * $mean); 

  my @y_values_norm = ();
  for (my $j = 0; $j <= $#y_values; $j++) {
    my $y = $y_values[$j];
    $y = ($y - $mean) / $sigma;
    push @y_values_norm, $y;
  }

  my $kurtosis = 0;
  for (my $j = 0; $j <= $#y_values_norm; $j++) {
    my $y = $y_values_norm[$j];
    $kurtosis += ($y * $y * $y * $y);
  }
  $kurtosis /= ($#y_values_norm + 1);
  $kurtosis -= 3;

  print "$alpha $kurtosis\n";
}
