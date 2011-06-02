# JATSPAN::LocalRepos
#
# $Id$

package JATSPAN::LocalRepos;

use JATSPAN::JATSPack;

use File::Find;
use strict;


#----------------------------------------------------------------------------
sub new
{
    my $class = shift;
    my $self = {
        'rootdir' => File::Spec->canonpath($ENV{JATSPAN_REPOS}),
    };
    bless $self, $class;
    #print "JATSPAN_REPOS is '" . $ENV{JATSPAN_REPOS} . "'\n\n";
    
    # Read the directory tree looking for expath-pkg.xml files.
    $self->_readPacks();
    
    return $self;
}

#----------------------------------------------------------------------------
# Recursively descend the directory tree under the repository root, looking
# for expath-pkg.xml files.  Don't descend into .svn dirs.  Also, once we find
# an expath-pkg.xml, don't descend any further.

sub _readPacks
{
    my $self = shift;
    my $rootdir = $self->{rootdir};
    
    find(\&_doEachDir, $rootdir);
}

#----------------------------------------------------------------------------
sub _doEachDir
{
    #print $File::Find::dir . "\n" .
    #      "  file: " . $_ . "\n" .
    #print "  pathname: " . $File::Find::name . "\n";
    
    if ($_ eq 'expath-pkg.xml') {
        my $jatspack = new JATSPAN::JATSPack($File::Find::name);
        #print "Got one!!!!!!!!!!!!!!!!!!!!\n";
        print File::Spec->canonpath( $jatspack->{pkgFilePath} ) . "\n";
    }
}




1;
