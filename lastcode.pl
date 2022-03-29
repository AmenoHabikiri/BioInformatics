#!/usr/bin/perl
#finding a codon
=a
chomp(my $DNA = <>);
@array = ();
for ($i=0;$i< length $DNA;$i=$i+1)
{
    $subs=substr($DNA,$i,3);
    push(@array,$subs);
}
print "@array\n";
=cut
chomp(my $DNA = <>);
@array = ();
$le=length $DNA;
for ($i=0;$i<($le-2);$i=$i+1)
{
    $subs=substr($DNA,$i,3);
    if ($subs eq "ATG")
    {
        for ($j=$i+3;$j<($le-2);$j=$j+1)
        {
            $subs1=substr($DNA,$j,3);
            $k=$j-$i+3;
            if ($subs1 eq "TAA")
            {
                $subs2=substr($DNA,$i,$k);
                print "$subs2\n";
            }
            if ($subs1 eq "TAG")
            {
                $subs2=substr($DNA,$i,$k);
                print "$subs2\n";
            }
            if ($subs1 eq "TGA")
            {
                $subs2=substr($DNA,$i,$k);
                print "$subs2\n";
            }
        }
    }
}