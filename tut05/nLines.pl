#!/usr/bin/perl -w

use strict;

sub getLines {
    my ($nlines) = @_;
    my $text = "";
    $text .= <> for (1..$nlines);
    return $text;
}

my $n = shift @ARGV or die "usage $0 <number_of_lines>";
print getLines($n);
