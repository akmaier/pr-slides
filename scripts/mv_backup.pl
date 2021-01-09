#!/usr/bin/perl

$file = shift @ARGV;

($sec,$min,$hour,$mday,$mon,$year,$wday,$ydat,$isdst)=localtime();
$year += 1900;
$mon += 1;
if (length($mon) == 1) {
  $mon = "0$mon";
}
if (length($mday) == 1) {
  $mday = "0$mday";
}

$newfile = $file;
$newfile =~ s/.tar.gz//;
$newfile =~ s/.tgz//;
$newfile = $newfile . "$year-$mon-$mday.tgz";

die "Datei $file nicht gefunden!\n" unless (-e $file);

$command = "mv $file backup/$newfile";

if (-e "./backup/$newfile") {
  print "Datei backup/$newfile bereits vorhanden!\n";
  print "Überschreiben? [j/n]\n";
  $antwort = <stdin>;
  chomp $antwort;
  if ($antwort eq "j" || $antwort eq "J" || 
      $antwort eq "y" || $antwort eq "Y") {
    print "$command\n";
    system $command;
  } else {
    print "Datei nicht kopiert!\n";
  }
} else {
  print "$command\n";
  system $command;
}
