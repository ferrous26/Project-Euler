#!/usr/bin/perl
# problem4.pl --- Largest palindrome created by product of two three digit numbers
my $i = 0, $j = 0, $product = 0; $result = 0;
for ( $i = 999; $i > 700; $i-- ) {
    for ( $j = 999; $j > 700; $j-- ) {
        $product = $i * $j;
        $result = $product if ( ($product eq reverse $product) && ($product > $result) );
    }
}
print "$result\n";
