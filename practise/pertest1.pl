#!/usr/bin/perl
#q1
open(Protein, "sample_dna.fasta");
@protein = <Proteinfile>;
$filename = '/home/sagar/Bioinformatics/Lab1/sample_dna.fasta';
if (-e $filename) 
{   
    $k=length @protein
    while ($a=0;$a<$k;$a=$a+1)
    {
        print "$a";
    }
}
else
{
    print "ERROR: File does not Exist!";
}

