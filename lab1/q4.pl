open(file, "Q 4.txt");


@protein = <file>;

close file;

$protein = join( '', @protein);


$space =~ s/\s//g;

#now let's searching for motifs in the loop;
do {
    print "Enter a motif you wanna search: ";

    $motif = <STDIN>;
    chomp $motif; 
    if ( $space =~ /$motif/ ) {
        print "Motif found\n\n";
    } else {
        print "Motif not found.\n\n";
    }

} until ( $motif =~ /^\s*$/ );