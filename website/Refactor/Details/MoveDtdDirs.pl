# This is a throw-away script to generate svn commands to move the
# directories of the extracted DTD files into a more standardized
# directory structure.

use strict;

use File::Find;

my @paths = ();
find(\&_wanted, '.');

foreach my $path (@paths) {
    #print "$path\n";
}

my $i;
#--------------------------------------------
sub _wanted
{
    my $f = $_;
    my $p = $File::Find::name;
    
    return if $p =~ /\/\.svn/;
    return if -f $f;
    
#    if ($p =~ /^[a-z]+\/\d\.\d\/[^\/]$/) {
    if ($p =~ /^\.\/(([-a-z]+\/\d\.\d)\/[^\/]+)$/) {
        my ($one, $two) = ($1, $2);
        print "svn mkdir --parents $two\n";
        print "svn move $one $two/dtd\n";
        push @paths, $p;
    }
 
}

#----------------------------------------------------------------------------
# normalizeSpace($s)
# This deletes leading and trailing space, and turns all internal string of
# whitespace into a single space character.

sub normalizeSpace
{
    my $s = shift;
    $s =~ s/^\s*(.*?)\s*$/$1/s;
    $s =~ s/\s+/ /gs;
    return $s;
}

