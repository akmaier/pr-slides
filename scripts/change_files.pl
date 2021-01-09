#!/usr/bin/perl
use strict;

my %substitute = ();
while (<stdin>) {
  chomp;
  my ($old, $new) = split /[ \t]+/;
  $substitute{$old} = $new;
}

foreach my $file (@ARGV) {
  open(FILE, $file) or die "couldn't open file '$file'\n";
  my $newfile = $file;
  $newfile =~ s/.tex/.TEX/;
  open(OUT, ">$newfile");

  while (my $line = <FILE>){
    chomp $line;
 
    foreach my $sub (keys %substitute) {
        my $new = $substitute{$sub};
        $sub =~ s/\\/\\\\/g;
        $line =~ s/$sub/$new/g;
    }

    print OUT "$line\n"; 
  }

  close(OUT);
  close(FILE);

  system "mv $file $file.old";
  system "mv $newfile $file";
}
