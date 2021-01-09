#!/usr/bin/perl
use strict;

my $file = "header." . shift @ARGV;

if (-e $file) {
  my $f = readlink "header.tex";
  if ($f ne $file) {
    system "ln -sf $file header.tex";
  }
} else {
  symlink $file, "header.tex";
}
