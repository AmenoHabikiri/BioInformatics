#!usr/bin/perl -w
use strict;
use warnings;
sub random_position 
{
    my($string) = @_;# This expression returns a random number between 0 andlength-1
    return int(rand(length($string)));
}
sub random_nucleotide
{
    my $cal=0;
    $cal=int(rand(4));
    if($cal == 0)
    {
        return 'A';
    }
    if($cal == 1)
    {
        return 'T';
    }
    if($cal == 2)
    {
        return 'G';
    }
    if($cal == 3)
    {
        return 'C';
    }
    
}
sub mutation
{ 
    my ($dna)=@_;
    my $random_pos=random_position($dna);
    my $random_nucleotide1=random_nucleotide;
    my $len=length $dna;
    my $sub1=substr($dna,0,$random_pos);
    my $sub2=substr($dna,$random_pos+1,$len);
    $dna=$sub1.$random_nucleotide1.$sub2;
    return $dna;
}
chomp(my $DNA = <>);
for(my $i=0;$i<=10;$i+=1)
{
    $DNA= mutation($DNA);
    print $DNA."\n";
}

