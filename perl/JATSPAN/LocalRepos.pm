# JATSPAN::LocalRepos
#
# $Id$

package JATSPAN::LocalRepos;

use strict;


#----------------------------------------------------------------------------
sub new
{
    my $class = shift;
    my $self = {
        'rootdir' => $ENV{JATSPAN_REPOS},
    };
    bless $self, $class;
    #print "JATSPAN_REPOS is '" . $ENV{JATSPAN_REPOS} . "'\n\n";
    return $self;
}


1;
