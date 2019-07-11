#!/usr/bin/perl -w

use strict;

my $file = shift @ARGV or die;

open my $f, "<", "$file" or die;

my $curr_whale = "";
my $curr_count = 0;
my $curr_date = "";

for my $line (<$f>) {

    if ($line =~ /(\S+)\s+(\d+)\s+(.+)/) {
        my $date = $1;
        my $count = $2;
        my $whale = $3;

        if ($date eq $curr_date && $whale eq $curr_whale) {
            $curr_count += $count;
        } else {
            print "$curr_date $curr_count $curr_whale\n" if $curr_count != 0;
            $curr_count = $count;
            $curr_date = $date;
            $curr_whale = $whale;
        }
    } else {
        print "can't parse line\n";
    }

}

print "$curr_date $curr_count $curr_whale\n";

close $f;
