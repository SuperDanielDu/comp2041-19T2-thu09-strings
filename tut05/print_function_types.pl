#!/usr/bin/perl -w

use strict;

while (my $line = <>) {
    $line =~ m/^([a-zA-Z_].*)\((.*)\)/ or next;
    my $function_start = $1;
    my $parameter = $2;

    my $function_name = $function_start;
    $function_name =~ s/^([a-zA-Z_]\w*)\s*//;
    my $function_type = $1;

    my $parameter_name = $parameter;
    $parameter_name =~ s/^([a-zA-Z_]\w*\s*\*?&?)//;
    my $parameter_type = $1;

    print "name: $function_name, type: $function_type, parameter type: $parameter_type, p name: $parameter_name\n";
}
