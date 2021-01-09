#!/usr/bin/perl

while (<stdin>) {
  chomp;

  # sucht nach '\label{...}'
  if (/\\label\{(\S+)(?{ $l = $^N })\}/) {
    print "$l\n";
  }
}
