#!/usr/bin/perl -w
# This script maintains the local jatspan repository.
# See POD documentation at the end.
#
# $Id$

use strict;

use JATSPAN;


my $repos = JATSPAN::LocalRepos->new();
print "repository root is " . $repos->{'rootdir'};
