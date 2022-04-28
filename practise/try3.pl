# !usr/bin/perl -w
$dna="ATGCTGCATGAATTGCAT";
do
{
    print "Enter a motif";
    chomp($motif = <>);
    if($motif)
    {
        for($i=0;$i<=((length $dna)-(length $motif));$i=$i+1)
        {
            $subs=substr($dna,$i,(length $motif));
            if ($dna =~ /$motif/)
            {
                if ($subs eq $motif)
                { 
                    print("position ".$i."\n");
                }
            }
            else
            {
                print "not found";
            }
        }
    }
    else
    {
        exit;
    }
}until($motif =~ /^\s*$/);