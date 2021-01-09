#!/usr/bin/perl
use strict;

my %images = ();

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
      } elsif (! exists($images{$file})) {
        my $cmd = "mv $path/$file $path/$newfile";
        print "$cmd\n";
        system "$cmd";

        my $f = $file;
        $f =~ s/.fig/.pstex_t/;
        $f =~ s/.jpg/.\\jpg/;
        $f =~ s/.png/.\\png/;
        my $nf = $newfile;
        $nf =~ s/.fig/.pstex_t/;
        $nf =~ s/.jpg/.\\jpg/;
        $nf =~ s/.png/.\\png/;
        print "$f $nf\n";

        $images{$file} = $newfile;
      }
    } else {
      $images{$file} =  $file;
    }
  } else {
    my $newfile = $chapter . "_" . $file;
    if (-e "$path/$newfile") {
      print stderr "Error: file '$path/$newfile' already exists\n";
    } elsif (! exists($images{$file})) {
      my $cmd = "mv $path/$file $path/$newfile";
      print "$cmd\n";
#      system "$cmd";

      my $f = $file;
      $f =~ s/.fig/.pstex_t/;
      $f =~ s/.jpg/.\\jpg/;
      $f =~ s/.png/.\\png/;
      print "$f $chapter" . "_$f\n";

      $images{$file} = $newfile;
    } 
  }
}
