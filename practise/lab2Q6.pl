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
            if ($subs1 eq "TGA") 
            {
                $subs2=substr($DNA,$i,$k);
                if ((length $subs2)%3 eq 0)
                {
                    print "$subs2\n";
                }
            }
        }
    }
}
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
                if ((length $subs2)%3 eq 0)
                {
                    print "$subs2\n";
                }
            }
        }
    }
}
for ($i=0;$i<($le-2);$i=$i+1)
{
    $subs=substr($DNA,$i,3);
    if ($subs eq "ATG")
    {
        for ($j=$i+3;$j<($le-2);$j=$j+1)
        {
            $subs1=substr($DNA,$j,3);
            $k=$j-$i+3;
            if ($subs1 eq "TAG") 
            {
                $subs2=substr($DNA,$i,$k);
                if ((length $subs2)%3 eq 0)
                {
                    print "$subs2\n";
                }
            }
        }
    }
}