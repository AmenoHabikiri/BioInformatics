my @DNA = ('A', 'C', 'G','T','T','A','C');
$using_pop = pop @DNA; #pop 
print "using pop command : $using_pop\n"; 
print "present array :@DNA\n";     
push @DNA, 'T';  #push
print "array after pushing :@DNA\n";  
@RNA = ('G', 'A');
push @DNA, @RNA;
print "array after pushing an array consisting G and A in the previous array :@DNA\n";     
$shift_output = shift @DNA; #shift
print "using shift :$shift_output\n";     
print "present array after shift :@DNA\n";     
unshift @DNA, 'T';
print "using unshift to add T infront of the array :@DNA\n";     
unshift @DNA, @RNA;
print "after using unshift to concat two aray :@DNA\n";   