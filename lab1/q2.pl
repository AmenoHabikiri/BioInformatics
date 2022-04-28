chomp(my $DNA = <>);
if ( $DNA eq reverse $DNA ) {
     print "PALINDROME!\n";
}
else {
     print "NOT A PALINDROME! \n";
}