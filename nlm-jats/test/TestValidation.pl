#!/usr/bin/perl -w
# $Id$
# See POD documentation below for information.

use FindBin;
use Getopt::Long;
use Pod::Usage;
use File::chdir;
use File::Spec::Functions;
use File::Temp qw/ tempdir /;
use File::Copy;
use strict;


#------------------------------------------------------------------------
# Handle command-line arguments
my $help;
my $verbose;
my $nohalt;
my $sampleFile;
my $methodNum;
my $result = GetOptions(
    'help|?' => \$help,
    'verbose' => \$verbose,
    'nohalt' => \$nohalt,
    'sample=s' => \$sampleFile,
    'method=i' => \$methodNum,
);
pod2usage({
    -exitval => 0,
    -verbose => 2,
}) if $help;

if (@ARGV) {
    die "Unknown command-line arguments given";
}
if ( defined $methodNum && 
     ($methodNum < 1 || $methodNum > 2) ) {
    die "Value for method must be between 1 and 2.";
}

#------------------------------------------------------------------------
# Make an array of three booleans corresponding to the possible
# methods.  True means that we're going to run that method.  For consistency,
# $method[1] corresponds to method #1.
my @methods;
if (defined $methodNum) {
    @methods = ( 0, 0, 0 );
    $methods[$methodNum] = 1;
}
else {
    @methods = ( 0, 1, 1 );
}

#------------------------------------------------------------------------
# Get list of sample files
my @sampleFiles;

# If it was specified on the command line, use that
if (defined $sampleFile) {
    push @sampleFiles, $sampleFile;
}
else {
    my $tslFile = "TestSampleList.txt";
    open TSL, $tslFile or die "Can't open $tslFile for input.";
    while (my $line = <TSL>) {
        chomp $line;
        if ($line !~ /^\s*#/ && $line !~ /^\s*$/) {
            push @sampleFiles, $line;
        }
    }
    close TSL;
}
#print "Got " . (scalar @sampleFiles) . " sample files:\n    " . 
#      (join("\n    ", @sampleFiles)) . "\n\n";

#------------------------------------------------
# Get miscellaneous other stuff ready.

# Get $jatsHome, either from the environment, or the parent of the
# current directory.
my $jatsHome = $ENV{JATS_HOME} || canonpath(catdir($CWD, '..'));
#print "jatsHome is $jatsHome\n"; 

# If test method 2 was specified, then create a temp directory
my $tempdir;
if ($methods[2]) {
    $tempdir = tempdir(CLEANUP => 1);
    print "Created temp directory $tempdir.\n" if $verbose;
}

# Value to set the XML_CATALOG_FILES environment variable to, for method 2:
my $xmlCatalogFiles = catfile($jatsHome, 'catalog.xml');

#------------------------------------------------
# Run the tests

my $status = 0;
foreach my $sf (@sampleFiles) {
    for my $m (1, 2) {
        if ($methods[$m]) {
            $status |= TestSample($sf, $m);
        }    
    }
}

if ($verbose) {
    print $status ? "Some tests failed.\n" : "All tests passed.\n";
}
exit $status;

#==============================================================
# Subroutines

#------------------------------------------------
# TestSample($sf, $m)
# Test one sample file, one method.
# Returns 0 if successful, non-zero on error.
# $sf is the name of the sample file as given in the test list or from the 
# command-line.

sub TestSample
{
    my ($sf, $m) = @_;

    # Resolve $sf based on jats home, if it isn't an absolute path
    my $sampleFullname = file_name_is_absolute($sf) ? 
        $sf : catfile($jatsHome, $sf);

    # Verify that the file exists
    if (! -f ($sampleFullname)) {
        die "Can't find sample file $sampleFullname";
    }

    print "Testing $sampleFullname, method $m\n" if $verbose;

    # Get the absolute sample path, not including the filename
    my ($volume, $path, $sampleFilename) = File::Spec->splitpath($sampleFullname);
    my $samplePathname = catdir($volume, $path);

    if ($m == 1) {
        # Need to make sure XML_CATALOG_FILES is not set.
        $ENV{XML_CATALOG_FILES} = '';
        local $CWD = $samplePathname;
        print "    Working directory:  $CWD\n" if $verbose;
        my $cmd = "xmllint --valid --noout $sampleFilename 2>&1";
        print "    Test command:  '$cmd'\n" if $verbose;
        return ExecXmllint($cmd, $sampleFullname);
    }
    
    elsif ($m == 2) {
        $ENV{XML_CATALOG_FILES} = $xmlCatalogFiles;
        my $tempFullname = catfile($tempdir, $sampleFilename);
        copy($sampleFullname, $tempFullname);
        local $CWD = $tempdir;
        print "    Working directory:  $CWD\n" if $verbose;
        my $cmd = "xmllint --valid --noout $sampleFilename 2>&1";
        print "    Test command:  '$cmd'\n" if $verbose;
        my $status = ExecXmllint($cmd, $tempFullname);
        unlink $tempFullname;
        return $status;
    }
}

#------------------------------------------------
# ExecXmllint($cmd, $sampleFullname)
# This subroutine just executes the xmllint command
sub ExecXmllint
{
    my ($cmd, $sampleFullname) = @_;
    my $errorout = `$cmd`;
    my $vError = $?;
    if ($verbose) {
        print "    Validation " . ($vError ? "failed" : "succeeded") . ".\n";
        if ($vError) {
            print "    Error message from xmllint:\n$errorout\n\n";
        }
    }
    else {
        if ($vError) {
            print "Failed validation:  $sampleFullname\n";
        }
    }

    if ($vError && !$nohalt) { 
        print "Halting.\n" if $verbose;
        exit 1;
    }

    return $vError;
}




#================================================================
__END__

=head1 NAME

TestValidation.pl - Test validation of a list of sample files.

=head1 SYNOPSIS

  TestValidation.pl [options]

=head1 DESCRIPTION

This test script reads a list of XML test files, and then uses B<xmllint> to attempt
to validate them against their self-declared DTDs, each in two different ways:

=over 4

=item 1

By cd'ing to the directory of the sample, and not using any catalog file.
This tests that the relative directory structure between the sample file
directory and directories of the DTDs is consistent.

=item 2

By copying the sample into a temporary directory, and setting 
the XML_CATALOG_FILES environment variable to point to the master catalog 
file.  This tests the consistency of all the catalog files.

=back

The sample file(s) can either be given on the command line with the --samples
option, or are assumed to be listed in a file named TestSampleList.txt in
the current working directory.  Each file should be given as a pathname that's
either absolute or relative to B<JATS_HOME>.  If B<JATS_HOME> is not set, it is
assumed to be the B<parent> of the current working directory.

=head1 OPTIONS

=over 4

=item B<--help>

Print this help message and exit.

=item B<--verbose>

Print detailed messages.

=item B<--nohalt>

Don't halt on validation errors.  Note that programatic errors, or problems like
missing sample files, will always cause the
program to die; but setting --nohalt will prevent errors returned by xmllint
from halting the testing.

=item B<--sample> I<path>

Test just the single file specified.  If this option is
not given, then a list of files is read from TestSampleList.txt.

=item B<--method> I<num>

Test just using the method indicated.  Default is to test both methods.

=back

=head1 DEPENDENCIES

Requires B<xmllint> to be in the B<PATH>.

=cut
