#!/usr/bin/perl
use strict;

my $chapter = shift @ARGV;

if (length($chapter) < 2) {
  $chapter = "0$chapter";
}

my $cmd = "./scripts/chapter.pl pr.tex $chapter";
system($cmd) == 0 or die "error: $cmd\n";

$cmd = "make";
system($cmd) == 0 or die "error: $cmd\n";
$cmd = "cp pr.pdf shipping/PR-V-$chapter.pdf";
system($cmd) == 0 or die "error: $cmd\n";

$cmd = "make A5";
system($cmd) == 0 or die "error: $cmd\n";
$cmd = "cp pr.pdf shipping/PR-V-$chapter-A5.pdf";
system($cmd) == 0 or die "error: $cmd\n";
