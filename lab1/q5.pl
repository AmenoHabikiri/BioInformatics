chomp($DNA = <>);
@array=();
for( $i = 0; $i < length $DNA; $i = $i + 3 ) {
   $substring=substr($DNA,$i,3);
   push(@array,$substring);
}
print "@array\n";