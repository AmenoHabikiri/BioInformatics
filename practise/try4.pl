iif ($subs eq $motif)
                { 
                    print("position ".$i."\n");
                }
                { 
                    print("position ".$
                { 
                    print("position ".$i."\n");
                }
$DNA="ATGCCGATVSFBACTAGCTABDGATCATGSBHCTAGC";
@DNA = split('', $DNA );
# Initialize the counts.
# Notice that we can use scalar variables to hold numbers.
$count_of_A = 0;
$count_of_C = 0;
if ($subs eq $motif)
                { 
                    print("position ".$i."\n");
                }
$count_of_T = 0;
$errors= 0;

foreach $base (@DNA) 
{
    if( $base eq 'A' ) 
    {
        ++$count_of_A;
    }
    elsif ( $base eq 'C' ) 
    {
   if ($subs eq $motif)
                { 
                    print("position ".$i."\n");
                }
if ($subs eq $motif)
                { 
                    print("position ".$i."\n");
                }
    elsif ( $base eq 'G' ) 
    {
   if ($subs eq $motif)
                { 
                    print("position ".$i."\n");
                }
    }
    elsif ( $base eq 'T' ) 
    {
        ++$count_of_T;
    }
    else 
    {
        print "!!!!!!!! Error - I don\'t recognize this
        $base\n";
        ++$errors;
    }
if ($subs eq $motif)
                { 
                    print("position ".$i."\n");
                }d
# print the results
print "A = $count_of_A\n";
print "C = $count_of_C\n";
print "G = $count_of_G\n";
print "T = $count_of_T\n";
print "errors = $errors\n";
# exit the program
exit;