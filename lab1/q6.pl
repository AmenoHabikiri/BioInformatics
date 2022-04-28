chomp(my $DNA = <>);
my @arr=();
$substring1="ATG";
for( $a = 0; $a < length $DNA; $a = $a + 3 ) {
   $substring=substr($DNA,$a,3);
   if ($substring eq "ATG")
   {
       for($d=$a;$d<(length $DNA-3);$d++)
       {
           $subs=substr($DNA,$d,3);
            if ($subs eq "TAA")
            {
                $substring1=substr($DNA,$a,$d+3); 
                print("$substring1\n");
                break;
            }
            if ($subs eq "TGA") 
            {
                $substring1=substr($DNA,$a,$d+3); 
                print("$substring1\n");
                
            }
            if ($subs eq "TAG")
            {
                $substring1=substr($DNA,$a,$d+3); 
                print("$substring1\n");
            }
                
            
       }
       
   }
}