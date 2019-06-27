#!/usr/bin/perl -w

$expression = shift @ARGV;

while ($line = <>) {
    print $line if $line =~ m/$expression/;
}
