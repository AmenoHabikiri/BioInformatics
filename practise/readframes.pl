sub codon2aa {
my($codon) = @_;
$codon = uc $codon;
my(%genetic_code) = (
    'TCA'
'TCC' => 'S',
'TCG' => 'S',
'TCT' => 'S',
'TTC' => 'S',
'TTT' => 'F',
'TTA' => 'F',
'TTG' => 'L',
'TAC' => 'Y',);
if (exists $genetic_code{$codon})
{
    return $genetic_code{$codon};
}
else{
    print "bad codon";
}
sub dna2peptide{
    my ($dna) =@_;
    my $protien ='';
    for (my $i=0; $i<(length ($dna)-2); $i+=3)
    {
        $protien .=codon2aa(substr($dna,$i,3));
    }
    return $protien;
}
sub revcom{
    my ($dna) = @_;
    my ($revcom) =reverse ($dna);
    $revcom =~ tr/ACGTacgt/TGCAtgca?;
    return $revcom;
}
sub translate_frame{
    my($seq,$start) = @_;
    my $protien;
    return dna2peptide(substr ($seq,($start-1),length $seq);
}

