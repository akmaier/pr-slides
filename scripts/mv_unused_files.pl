#!/usr/bin/perl
use strict;
 
my %keep_files = ();
while (<stdin>) {
  chomp;
  $keep_files{$_} = 1;
}

my @all_files = <jpg/*>;
foreach my $f (@all_files) {
  if (! $keep_files{$f}) {
    my $cmd = "mv $f ./unused/jpg/";
    print "$cmd\n";
    system $cmd;
  }
} 
