#!/usr/bin/perl
use strict;

my $file = shift @ARGV;
my $chapter = shift @ARGV;

my @lines = ();
open(FILE, $file) or die "couldn't open file '$file'\n";
while (my $line = <FILE>) {
  chomp $line;
  if ($line =~ /\\input{[0-9][0-9]/) {
    if (!($line =~ /\\input{00/))  {
      $line =~ s/^% //;
      if (!($line =~ /\\input{$chapter/)) {
        $line = "% $line"; 
      }
    }
  }
  push @lines, "$line\n";
}
close(FILE);


open(FILE, ">$file") or die "couldn't open file '$file' for writing\n";
foreach my $line (@lines) {
  print FILE $line;
}
close (FILE);
