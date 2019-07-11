#!/usr/bin/perl -w

use strict;

my $file1 = shift @ARGV or die "usage: $0 <file1> <file2>\n";
my $file2 = shift @ARGV or die "usage: $0 <file1> <file2>\n";

my %words;

open my $f, "<", $file1 or die "could not open file: $!\n";
for my $word (<$f>) {
    chomp $word;
    $words{$word} = "added";
}
close $f;

open $f, "<", $file2 or die "could not open file: $!\n";
for my $word (<$f>) {
    chomp $word;
    $words{$word} = "deleted";
}
close $f;

for my $word (keys %words) {
    print "$word\n" if $words{$word} eq "added";
}
