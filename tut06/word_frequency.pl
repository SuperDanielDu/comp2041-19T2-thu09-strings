#!/usr/bin/perl -w

use strict;

my %wordCounts;

for my $line (<STDIN>) {
    $line =~ tr/A-Z/a-z/;
    # lc $line
    my @words = $line =~ /[a-z]+/g;
    # my @words = split / /, $line;
    for my $word (@words) {
        $wordCounts{$word}++;
    }
}

my @words = keys %wordCounts;
my @sortedWords = sort {$wordCounts{$a} <=> $wordCounts{$b}} @words;
for my $word (@sortedWords) {
    print "$wordCounts{$word} $word\n";
}
