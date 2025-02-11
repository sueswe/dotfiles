#!/usr/bin/env perl

use warnings;
use strict;
use File::Copy;

my $fileextension = $ARGV[0];

if ( ! defined $fileextension ) { &usage(); exit(1); }


my @files = <*>;
foreach my $name (@files) {
    if ( $name =~ m/\Q$fileextension/g ) {
        print "renaming $name \t -> ";
        (my $newname = $name) =~ s/\ |,/_/ig;
        print "$newname \n";
        move("$name","$newname") || die("move: $! \n");
    }
}

sub usage {
    print "Removes spaces in filenames\n";
    print "Usage: $0 <fileextension> \n\n";
    print "    example: $0 mp3\n";
    return 0
}
