#!/usr/bin/perl -w

$n = 10;
if (@ARGV && $ARGV[0] =~ m/^-([0-9]+)/) {
    $n = shift @ARGV;
    $n =~ s/-//;
}

for $file (@ARGV) {
    open $F, '<', "$file";
    @lines = <$F>;
    for ($i = 0; $i <= $n-1 && $i <= $#lines; $i++){
        print $lines[$i];
    }
    close $F;
}

# @lines = <STDIN>;

# # print @lines[0..$n-1];

# for ($i = 0; $i < $n-1 && $i <= $#lines; $i++){
#     print $lines[$i];
# }
