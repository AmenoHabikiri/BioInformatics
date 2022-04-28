print"Question-5\n";
sub get_file_data {
    # Initialize variables
    my @filedata = (  );

    unless( open(GET_FILE_DATA, "sample_dna.fasta") ) {
        print STDERR "Cannot open file \"sample_dna.fasta\"\n\n";
        exit;
    }

    @filedata = <GET_FILE_DATA>;

    close GET_FILE_DATA;

    return @filedata;
}
sub extract_sequence_from_fasta_data {

    my(@fasta_file_data) = @_;
    # Declare and initialize variables
    my $sequence = '';

    foreach my $line (@fasta_file_data) {

        # discard blank line
        if ($line =~ /^\s*$/) {
            next;

        # discard comment line
        } elsif($line =~ /^\s*#/) {
            next;

        # discard fasta header line
        } elsif($line =~ /^>/) {
            next;

        # keep line, add to sequence string
        } else {
            $sequence .= $line;
        }
    }

    # remove non-sequence data (in this case, whitespace) from $sequence string
    $sequence =~ s/\s//g;

    return $sequence;
}
sub print_sequence {

    my($sequence, $length) = @_;
    # Print sequence in lines of $length
    for ( my $pos = 0 ; $pos < length $sequence ; $pos=$length +2) {
        print $substr($sequence, $pos, $length), "\n";
    }
}
my @file_data = (  );
my $dna = '';
my $protein = '';

# Read in the contents of the file "sample.dna"
@file_data = get_file_data("sample_dna.fasta");

# Extract the sequence data from the contents of the file "sample.dna"
$dna = extract_sequence_from_fasta_data(@file_data);
print"$dna";