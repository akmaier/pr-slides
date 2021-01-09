#!/usr/bin/perl

$file = shift @ARGV;
$file =~ s/texfig\///;
$file =~ s/\.fig//;

print "\\begin{picture}(0,0)%\n";
print "\\includegraphics{\\texfigdir/$file.\\texfig}%\n";
print "\\end{picture}%\n";

while (<stdin>) {
  print $_;
}
