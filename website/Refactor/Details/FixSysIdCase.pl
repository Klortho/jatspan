# This is a throw-away script that I used to change the case of some of the 
# system id entries in some of the catalog.ent files, to match the actual
# case of the filenames.

use strict;

use File::Find;

my @paths = ();
find(\&_wanted, '.');

my @badFiles = ();
foreach my $path (@paths) {
    #print "Reading $path\n";
    open F, $path or die "Can't open $path for reading";
      my $lineNum = 0;
      while (my $line = <F>) {
          $lineNum++;
          if ($line =~ m{ISOlat[12]\.ent}) {
              push @badFiles, $path;
          }
      }
    close F;  
}

foreach my $bad (@badFiles) {
    print "Editing $bad\n";
    rename $bad, "$bad~"
        or die "Cannot rename: $!";
    open IN, "<$bad~"
        or die "Cannot open: $!";
    open OUT, ">$bad"
        or die "Cannot create: $!";
    while (my $line = <IN>) {
      if ($line =~ m{ISOlat[12]\.ent}) {
          my $newline = $line;
          $newline =~ s/(ISOlat[12].ent)/\L$1/;
          if ($newline eq $line) {
              die "Change didn't take";
          }
          $line = $newline;
      }
      print OUT $line;
    }
    close OUT;
    close IN;
    unlink "$bad~";
}


#--------------------------------------------
sub _wanted
{
    my $p = $File::Find::name;
    
    return if $p =~ /\/\.svn/;
    return if $p !~ /(\.ent|\.mod|\.dtd|\.xml)$/;
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

