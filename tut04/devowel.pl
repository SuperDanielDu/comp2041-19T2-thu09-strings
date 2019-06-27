#!/usr/bin/perl -w

# my $output = "";
while (<>) {
    s/[aeiou]//gi;
    print;
}
print;
# print $output;
