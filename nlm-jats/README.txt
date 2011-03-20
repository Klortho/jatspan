NLM-JATS

This set of files is a somewhat refactored version of the NLM Journal Archiving
and Interchange Tag Suite (http://dtd.nlm.nih.gov/).  The set of files has been
reorganized into a clean heirarchical directory structure, eliminating
redundancy.  Also, a heirarchical set of OASIS catalog files are provided which
should be easier to use than the ones provided from the NLM site.

Here are some details, in no particular order.

- Only the DTDs, OASIS catalog files, and some samples are present in this
  archive.  Not included are the documentation files, Relax NG schema, W3C
  schema, tools, or other miscellaneous files.

- A test utility is included, as a Perl script and a list of sample files, in
  the test directory.  Enter the command
    TestValidation.pl --help
  To see usage information.  This utility depends on xmllint being in your PATH.

- The OASIS catalog files here do not use the xml:base attribute, so this
  archive should be completely relocateable.  The top-level catalog file is in
  the nlm-jats root directory, and is named catalog.xml.

- To set up oXygen to use this catalog file with this set of DTDs, select
  "Options" -> "Preferences".  Then, in the tree on the left, "XML" -> "XML
  Catalog", and then add the main catalog.xml file from the nlm-jats directory

- The directory structure is consistent and clean.  Library files are those
  from XHTML and MathML, have been factored out into the "lib" directory.
  Common JATS files have been factored out into the "core" directory.

    nlm-jats/
        catalog.xml
        README.txt
        lib/ - third party "libraries"
            mathml2/
                2.0/
                    dtd/ - contents from the MathML distribution, see below
            xhtml/
                1.0/
        core/ - all NLM JATS shared modules
            1.0/
                catalog.xml
                dtd/
                rng/
                xsd/
                docs/
                samples/
                tools/
            2.0/
                catalog.xml
                ...
            ...
        archiving/ - green
            1.0/
            ...
            2.3/
            3.0/
        publishing/ - blue
            ...
        authoring/ - pumpkin
            ...
        books/ - purple
            ...
        archive-oasis/
        publishing-oasis/
        historical/

- The DTD and .ent files here are not byte-for-byte exactly the same as those
  on the NLM site.  A number of discrepancies have been cleaned up, and system
  identifiers were adjusted to compensate for moving entity definition files
  around.  But, these files should work to define the exact same logical DTD in
  each and every case -- but it cannot be guaranteed.  That is, assuming that
  the XML parser correctly resolves all .dtd and .ent files, the resultant
  document type definition should be identical to that provided by the original
  NLM files.  I'd be very interested to hear of any substantive differences, if
  any are found.  Please email them to me at voldrani@gmail.com.


$Id$
