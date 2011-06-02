# JATSPAN::JATSPack
#
# $Id: LocalRepos.pm 261 2011-06-01 20:11:49Z chrismaloney $

package JATSPAN::JATSPack;

use File::Spec;
use strict;


#----------------------------------------------------------------------------
sub new
{
    my ($class, $pkgFilePath) = @_;
    my $self = {
        'pkgFilePath' => File::Spec->canonpath($pkgFilePath),
    };
    bless $self, $class;

    return $self;
}


1;
