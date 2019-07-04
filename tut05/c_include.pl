#!/usr/bin/perl -w

use strict;

sub includeFiles {
    my ($file) = @_;
    open my $fh, "<", "$file" or die "could not open $file: $!";

    while (my $line = <$fh>) {
        if ($line =~ m/^#include\s+"(.+)"/) {
            my $includedFile = $1;
            includeFiles($includedFile);
        } else {
            print "$line";
        }
    }

    close $fh;
}

my $file = shift @ARGV or die "usage: $0 <c-file>";
includeFiles($file);
