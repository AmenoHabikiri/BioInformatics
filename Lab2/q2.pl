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
    $subs=substr($DNA,$i,1);
    if ($subs eq "N")
    {
        for ($j=$i+1;$j<$le;$j=$j+1)
        {
            $subs1=substr($DNA,$j,2);
            $k=$j-$i+2;
            if ($subs1 eq "TT")
            {
                $subs2=substr($DNA,$i,$k);
                print "$subs2\n";
            }
        }
    }
}
#please have mercy because the file is not beiing readable in my system