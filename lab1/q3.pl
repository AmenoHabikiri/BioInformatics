chomp(my $DNA = <>);
$a=0;
$t=0;
$c=0;
$g=0;
foreach $char (split('', $DNA)) 
{ 
  if($char eq 'A')
  {
      $a++;
  }
  if($char eq 'T')
  {
      $t++;
  }
  if($char eq 'A')
  {
      $g++;
  }
  if($char eq 'A')
  {
      $c++;
  }
}
$sum=$a+$t+$g+$c;
$a=$a/$sum*100;
$t=$t/$sum*100;
$g=$g/$sum*100;
$c=$c/$sum*100;   
print "percentage of A : $a\n";
print "percentage of T : $t\n"; 
print "percentage of G : $g\n"; 
print "percentage of C : $c\n"; 