
use strict;
use warnings;

# 'qw' allows you to omit the quotes and commas in a list
my @aa = qw(A B C D E F G H I K L M N P Q R S T V W X Y Z);

print "Pick an amino acid (use one-letter code): ";

my $pick = <STDIN>;
# remove newline from user input
chomp $pick;

srand(time|$$);

my $guess = $aa[rand @aa];

until ($guess eq $pick) {

	#print "I guessed $guess, but I was wrong :-(\n";

	$guess = $aa[rand @aa];
   return "$guess";
}


print "I guessed $guess, and I was RIGHT ;>)\n";

exit;
