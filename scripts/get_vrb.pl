#!/usr/bin/perl
use strict;

foreach my $file (@ARGV) {
  my ($chapter) = split /\_/, $file;

  my @vrb = ();
  open(FILE, $file) or die "couldn't  open file '$file'\n";
  while (<FILE>) {
    chomp;

    if (/^%/) {
      next; 
    }

    if (/input{vrb/) {
      s/[\w\W\s\S]*\\input{vrb\//vrb\//;
      s/}[\w\W\s\S]*/.tex/;
      s/[ ]+//;
      push @vrb, $_;
    }
  }
  close(FILE);

  foreach my $file (sort @vrb) {
    print "$chapter $file\n";
  }
}
