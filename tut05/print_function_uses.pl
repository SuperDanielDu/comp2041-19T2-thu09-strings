#!/usr/bin/perl -w

use strict;

my $function_name = shift @ARGV or die "usage: $0 <function-name>";

for my $file (glob "*.c") {
    open my $fh, "<", "$file" or die "$0: could not open file: $!";

    while (my $line = <$fh>) {
        $line =~ s|//.*||;
        $line =~ s|".*?"||g;

        $line =~ m/\b$function_name\s*\(.*\)/ or next;

        my $status = "";
        if ($line =~ m/^\s/) {
            $status = 'used';
        } elsif ($line =~ m/;\s*$/) {
            $status = "declared";
        } else {
            $status = "defined";
        }
        print "$file:$. function $function_name $status\n";
    }

    close $fh;
}
