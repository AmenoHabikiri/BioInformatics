# !usr/bin/perl -w
$dna="ATGCTGCATGAATTGCAT";
#finding position of motif
do
{
    print "Enter a motif";
    chomp($motif = <>);
    if($motif)
    {
        if($dna=~ /$motif/)
        {
            print "found\n\n";
        }
        else
        {
            print "not found\n\n";
        }
    }
    else
    {
        exit;
    }
}until($motif =~ /^\s*$/);
exit;