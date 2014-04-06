# The JATS Bundle

This set of files comprises the core JATSPack packages, which include the DTDs
for every released version of the NLM JATS and for version 0.4 of the new NISO
draft standard.

These are repackaged instances of the NLM/NISO Journal Archiving and
Interchange Tag Suite (http://dtd.nlm.nih.gov/).

The repackaging has involved reorganizing the files into a clean heirarchical
directory structure and eliminating redundancy.  Also, a heirarchical set of
OASIS catalog files has been created and provided, which should be easier to
use than the catalog files provided on the NLM site.

Only the DTDs, OASIS catalog files, and some samples are present in this
bundle.  Not included are the documentation files, Relax NG schema, W3C schema,
tools, or other miscellaneous files.


Testing
-------

A test utility is included, as a Perl script and a list of sample files, in the
'test' directory.  To see usage information, enter the command

    TestValidation.pl --help

This utility depends on xmllint being in your PATH.


Using this bundle
-----------------

The OASIS catalog files here do not use the xml:base attribute, so this archive
should be completely relocateable.  Just unzip it to any directory on your file
system where you want it to reside, and then point your XML tools to the
top-level OASIS catalog file.  This top-level catalog file is in the top
jatspacks directory, and is named catalog.xml.

To set up oXygen to use this catalog file, so that you can validate instance
documents against any of the JATS DTDs, select "Options" -> "Preferences".
Then, in the tree on the left, "XML" -> "XML Catalog".  Then add the main
catalog.xml file from the jatspacks directory where you unzipped the bundle.

To configure your system to allow libxml2 to use these DTDs, just set the
environment variable XML_CATALOG_FILES to point to the top-level master catalog
file included with this bundle.

Setting up other tools should be similar - just point the tool to the master
OASIS catalog file.


JATSPacks and JATSPAN
---------------------
This is a very preliminary version of this distribution.  For more information
about this project, visit the http://jatspan.org/ site, or the project page on
GitHub [Klortho/jatspan](http://github.com/Klortho/jatspan).


CC0 - Public Domain
-------------------
This work is dedicated to the public domain.  To the extent possible under law,
Chris Maloney has waived all copyright and related or neighboring rights to
JATSPAN web site, any original JATSPacks, and related documentation. This work
is published from:  United States.
