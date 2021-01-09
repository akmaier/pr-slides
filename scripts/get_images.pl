#!/usr/bin/perl
use strict;

foreach my $file (@ARGV) {
  my ($chapter) = split /\_/, $file;

  my @images = ();
  open(FILE, $file) or die "couldn't  open file '$file'\n";
  while (<FILE>) {
    chomp;

    if (/^%/) {
      next; 
    }

    if (/input{\\texfigdir/) {
      s/[\w\W\s\S]*\\input{\\texfigdir\//texfig\//;
      s/.pstex_t}[\w\W\s\S]*/.fig/;
      s/[ ]+//;
      push @images, $_;
    }

    if (/includegraphics/) {
      s/[\w\W\s\S]*\\includegraphics(<[\w\W]*>)*\[[\w\W]*\]{//;
      s/}[\w\W\s\S]*//g;
      s/.\\jpg/.jpg/g;
      s/.\\png/.png/g;
      s/\\jpgdir/jpg/g;
      s/\\pngdir/png/g; 
      s/[ ]+//g;
      push @images, $_;
    }
  }
  close(FILE);

  foreach my $img (sort @images) {
    print "$chapter $img\n";
  }
}
