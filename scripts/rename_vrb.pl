#!/usr/bin/perl
use strict;

my %vrb = ();

while (<stdin>) {
  chomp;

  my ($chapter, $file) = split /[ \t]+/;
  my ($path, $file) = split /\//, $file;
  
  if ($file =~ /^0/) {
 
    my ($chap) = split /\_/, $file;

    if ($chap ne $chapter) {
      my @h = split /\_/, $file;
      shift @h;
      my $newfile = "@h";
      $newfile =~ s/ /\_/g;
      if ($newfile =~ /^[ab][A-Z]/) {
        $newfile = substr($newfile, 1, length($newfile)-1);
      }
      $newfile = $chapter . "_$newfile";

      if (-e "$path/$newfile") {
        print stderr "Error: file '$path/$newfile' already exists\n";
      } elsif (! exists($vrb{$file})) {
        my $cmd = "mv $path/$file $path/$newfile";
        print "$cmd\n";
        system "$cmd";

        my $f = $file;
        $f =~ s/.tex//;
        my $nf = $newfile;
        $nf =~ s/.tex//;
        print "vrb/$f vrb/$nf\n";

        $vrb{$file} = $newfile;
      }
    } else {
      $vrb{$file} =  $file;
    }
  } else {
    my $newfile = $chapter . "_" . $file;
    if (-e "$path/$newfile") {
      print stderr "Error: file '$path/$newfile' already exists\n";
    } elsif (! exists($vrb{$file})) {
      my $cmd = "mv $path/$file $path/$newfile";
      print "$cmd\n";
      system "$cmd";

      my $f = $file;
      $f =~ s/.tex//;
      print "vrb/$f vrb/$chapter" . "_$f\n";

      $vrb{$file} = $newfile;
    } 
  }
}
