chomp(my $DNA = <>);
@array = ();
$le=length $DNA;
for ($i=0;$i<($le-2);$i=$i+1) 
{
    $subs=substr($DNA,$i,3); 
    if ($subs eq "ATG")       
    {
        for ($j=$i+3;$j<$le;$j=$j+3) # INCREMENT OF 3 INSTEAD OF 1 AS A CODON IS TRIPLET
        {
            $subs1=substr($DNA,$j,3);
            $k=$j-$i+3;
            if ($subs1 =~ m/TAA|TAG|TGA/g) # YOU CAN USE ALL THREE CONDITION USING '|'
            {
                $subs2=substr($DNA,$i,$k);
                print "\n$subs2\n";
                last;                      # Otherwise it is starting again from 1 element;
             }
        }
    }
}
