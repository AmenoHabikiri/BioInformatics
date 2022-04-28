#!/usr/bin/perl -w
#confirming a palindromic sequence 

#taking a sequence as input
print "Enter a DNA sequence: \n";
$dnastring = <STDIN>;

#removing newline character from standard input
chomp $dnastring;

#reversing the string
$reversecomp = reverse $dnastring;

#complementing the string
$reversecomp =~ tr/ATGCatgc/TACGtacg/;

#equating the actual and reversed string to check for palindrome. If the actual and reverse sequences are same then they are palindromic
if( $reversecomp eq $dnastring ) {
	print "The given sequence is a palindrome. \n";   
} else {
	print "The given sequence is not a palindrome. \n";
}

exit;