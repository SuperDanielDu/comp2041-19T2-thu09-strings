#!/usr/bin/perl -w

use strict;

# wget -q -O- $url

my $url = shift @ARGV or die;

open my $f, "-|", "wget -q -O- $url" or die;

while (my $line = <$f>) {
    my @numbers = split /[^\d\-\s]/, $line;
    for my $n (@numbers) {
        $n =~ s/\s//g;
        $n =~ s/\-//g;
        print "$n\n" if length $n >= 8 && length $n <= 15;
    }
}

close $f;
