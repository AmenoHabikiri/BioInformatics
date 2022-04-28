#!/usr/bin/perl
print"Q1";
open("Protienfile",'<',"sample_dna.fasta") or die("Erro : Could not open  file.");
my $line=<Protienfile>;
while(<Protienfile>)
{
   print $_;
}
close(Protienfile);