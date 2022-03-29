#!/usr/bin/perl
$DNA="Sagar saloni pat,i /i,dra";
print $DNA;
print ("\n");
#datatypes
$cstring="abcd";
@array=("a","b");
%hashtable=("a1", 1, "a2", 2,"a3", 3, "a4", 4,"a5", 5, "a6", 6);#dictionary
print $hashtable{"key"},"\n";
#concatenation_operator_on_scalers(.)(,)
$cstring2="def";
print $cstring.$cstring2."\n";
$cstring3=$cstring.$cstring2;
print $cstring3."\n";
$String=v86.78.73.88;
print $String,"\n";
#array_manipulation
@array1=('A','B','C','D','E','F');
print $array1[-1],"\n";
print @array1[2..4],"\n";#returns_array_of_range_of_data
print @array1[2..$#array1],"\n";
@array2=(1..10);
print @array2,"\n";
@array3=(a..a);
print @array3,"\n";
print scalar @array2;
print $#array2,"\n";
#slicing syntax splice(<array namea>,index,number of elements, enter the elements);
splice(@array2,2,3,98..100);
print @array2,"\n";
splice(@array2,4);#delete last three elments of the array when -a is used, or else when a is used returns first a number of elements of array 
print @array2,"\n";
#split
@array3=split(" ",$DNA);#split("",arrayName) can be used to convert a string to a array of characters
print @array3[1],"\n";
@array=(@array1,@array2);#merging two arrays into one
print @array,"\n";
#operating wiht hash
print keys%hashtable,"\n";
@keysH= keys %hashtable;
@vals= values %hashtable;
print @keysH,"\n";
print @vals,"\n";
$hashtable{a7}=7;
print %hashtable,"\n";
delete %hashtable{a5};
print keys%hashtable,"\n";
#chomp(variable_name) removes last newline character
#chop(variable name) removes last character
@skills = ("perl","python","java","unix","java");
@skills = map {$_."tech"}@skills;
print @skills,"\n";
@skills = ("perl","python","java","unix","java","unix");
%skills = map {$_ =>  }@skills;#converts a array to a hashtable
print %skills,"\n";
@skills = ("perl","python","java","unix","java");
@skills = grep{!/^p/} @skills;#grep will find you elements not starting with p
print "@skills\n";
@skills = map {$_ =>  } grep{!/^p/} @skills;
print "@skills\n"; 