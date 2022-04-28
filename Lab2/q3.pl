#!/usr/bin/perl 
print "Enter a DNA sequence: \n";
chomp(my $DNA = <>);
print "The original dna sequence is: $DNA\n";

#defining the subroutine
sub polypeptide {
	$len= int(length($DNA)/3);
	print "The length of the polypeptide chain is $len amino acids.\n";
}

#calling the subroutine
polypeptide();

exit;