#!/usr/bin/perl -w

use strict;

my %recent_sightings;

my $file = shift @ARGV or die;
open my $f, "<", $file or die;

for my $line (<$f>) {

    if ($line =~ /(\S+)\s+(\d+)\s+(.+)/) {
        my $date = $1;
        my $whale = $3;

        $recent_sightings{$whale} = $date;

    } else {
        print "can't parse line\n";
    }

}

close $f;

for my $whale (sort keys %recent_sightings) {
    print "$whale $recent_sightings{$whale}\n";
}
