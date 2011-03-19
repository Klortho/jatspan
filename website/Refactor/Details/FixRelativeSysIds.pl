# This is a throw-away script that I used to fix the relative system ids in
# all the modules.
# This will first read the MakeCatalogs-product.xml file to get a cross-reference
# list of all public ids to file locations.
# It will then go through and read all of the .ent, .mod, and .dtd files, looking
# for the pattern
#   PUBLIC "<public id>" "<system id>"
# When it finds those, it will fix the system id to point to the correct relative
# path.

use strict;

use Data::Dumper;
use XML::LibXML;
use File::Find;


#--------------------------------------------------------------
# Read the public ids into a hash with key-value pair like this:
#   <pid> => [ 'publishing', '2.0', 'dtd', 'modules.ent', ],
# The semantic ordering of the directory path segments is well-behaved.
# That is, it's always <tag-set>, <version>, "dtd", <filename>.

my %pids;

my $parser = XML::LibXML->new();
my $doc = $parser->parse_file('MakeCatalogs-product.xml');
my @groupElements = $doc->getDocumentElement()->getElementsByTagName('Group');

foreach my $groupElement (@groupElements) {
    my $dir = $groupElement->getAttribute("dir");
    my @segs = split(/\//, $dir);
    shift @segs;
    #print "num segs is " . (scalar @segs) . ", segs are [" .
    #    join(', ', @segs) . "]\n";
    #print "dir is $dir\n";
    my @publicElements = $groupElement->getChildrenByTagName('public');
    #print "num publicElements is " . (scalar @publicElements) . "\n";
    foreach my $publicElement (@publicElements) {
        my $publicId = $publicElement->getAttribute('publicId');
        my $uri = $publicElement->getAttribute('uri');
        #print "publicId is $publicId, uri is $uri\n";

        my $filename = $uri;
        $filename =~ s/^dtd\///;

        $pids{$publicId} = [ @segs, $filename ];
    }
}

#print Dumper(\%pids);

#--------------------------------------------------------------
# Get a list of all the .ent, .mod, and .dtd files, that aren't in the
# lib directory:

my @paths = ();
find(\&_wanted, '.');

print "Files to read:\n  " .
      join("\n  ", @paths) . "\n";

#--------------------------------------------------------------
# Go through each and every file and rewrite it.
# Already done through file 5.

my $doWrite;

my $pathNum = 0;
my $START = 81;
my $END = 290;
foreach my $f (@paths) {
    if ($pathNum >= $START && $pathNum <= $END) { $doWrite = 1; }
    else { $doWrite = 0; }

    print (($doWrite ? "Editing" : "Reading") . " #$pathNum, '$f'\n");
    my @fSegs = split(/\//, $f);
    shift @fSegs;

    # Slurp in the contents
    open IN, "<$f" or die "Cannot open: $!";
    binmode IN;
    my $contents = join("", <IN>);
    close IN;

    if ($doWrite) {
        open OUT, ">$f" or die "Cannot overwrite: $!";
        binmode OUT;
    }

    while ($contents =~ s/^ ( .*?
                              \s+PUBLIC
                              \s+ " )
                            ( \-\/\/NLM\/\/.*? )
                            ( " \s+ " )
                            ( .*? )
                            ( "\s+ ) //xs)
    {
        my ($preamble, $pid, $between, $sid, $postamble) =
          ($1, $2, $3, $4, $5);

        if (!exists($pids{$pid})) {
            die "Unrecognized pid: '$pid'\n";
        }
        my $target = $pids{$pid};
        #if ($sid ne $target->[3]) {
        #    print "Data error, filename mismatch:  '" . $sid . "' ne '" . $target->[3] . "'\n";
        #}

        # Compute the relative path from @fSegs to $target.  Examples:
        #   @fSegs = ( archive-oasis, 2.3, dtd, archive-OASIS.dtd )
        #   @$target = ( core, 2.3, dtd, modules.ent )
        #print "  fSegs are [" . join(', ', @fSegs) . "]\n";
        #print "  target is [" . join(', ', @$target) . "]\n";
        my $numMatchingSegs;
        for my $i (0 .. 3) {
            last if $fSegs[$i] ne $target->[$i];
            $numMatchingSegs++;
        }
        #print "  numMatchingSegs si $numMatchingSegs\n";
        my $dotDots = '../' x (3 - $numMatchingSegs);
        #print "  dotDots is '$dotDots'\n";
        my $newSid = $dotDots;
        for my $i ($numMatchingSegs .. 3) {
            $newSid .= $target->[$i];
            if ($i != 3) { $newSid .= "/" }
        }
        #print "  newSid is '$newSid'\n";

        if ($doWrite) {
            print OUT $preamble, $pid, $between, $newSid, $postamble;
        }
    }
    if ($doWrite) {
        print OUT $contents;
        close OUT;
    }
    $pathNum++;
    #exit 0;
}


#--------------------------------------------
sub _wanted
{
    my $p = $File::Find::name;

    return if $p =~ /\/\.svn/;
    return if $p =~ /^\.\/lib\//;
    return if $p !~ /(\.ent|\.mod|\.dtd)$/;
    push @paths, $p;

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

