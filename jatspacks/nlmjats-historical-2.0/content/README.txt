DELIVERY LETTER FOR THE DRAFT NCBI BOOK DTD (VERSION 2.0)

                                        08 December, 2004


Here is the Version 2.0 NLM Book DTD and a few test files
with the minor tweaks you asked for.

The rest of this README contains notes concerning:

   1.0 The NLM Book DTD Version 2.0
   2.0 Files in This Delivery
       2.1 Modules Specific to the NLM Book DTD
       2.2 Modules Specific to the Collection
       2.3 Basic Suite Modules (delivered for convenience)
       2.4 Small sample documents for Testing

------------------------------------------------------

1.0 THE NLM BOOK DTD VERSION 2.0


This DTD was made using the new modularization scheme
put into place in version 2.0 of the Archiving and 
Interchange  Suite DTD Suite. Therefore the "Book DTD"
is made up of the following files: a book DTD file; 
three class, mix, and model over-ride files; and several 
new modules that add Book-specific elements such as book 
parts (chapters) and book-specific metadata.

The latest base Suite modules (also, by coincidence
Version 2.0) were used.

------------------------------------------------------

2.0 FILES IN THE DELIVERY

This README names the modules delivered as Version 2.0
of the NLM Book DTD. The latest Archiving and Interchange 
Suite 2.0 Modules have been added to this draft delivery for 
convenience in testing.

------------------------------------------------------

2.1 Modules Specific to the NLM Book DTD

Catalog File

book-catalog.ent - OASIS SOCAT catalog of the fpi and
            file names for just the NLM Book DTD modules.
            Does not include the fpis for the Suite modules.

book.dtd     Main DTD for NLM Book DTD, a DOCTYPE that 
             covers monographs, reference books, and
             similar works. This DTD invokes almost all the 
             modules in the NLM Archiving and Interchange
             DTD Suite.

bookcustom-modules.ent 
             Names all new modules created specifically
             for this Book DTD (therefore not part of
             the base DTD Suite)

bookcustom-classes.ent
             The DTD-specific class definitions for the 
             this Book DTD. Used to over-ride the Suite
             default classes. 
             Declared in %bookcustom-modules.ent;
             Must be invoked in the DTD file before the 
             default classes module.

bookcustom-mixes.ent
             The DTD-specific mix definitions for the 
             this Book DTD. Used to over-ride the Suite
             default mixes. 
             Declared in %bookcustom-modules.ent;
             Must be invoked in the DTD file before the 
             default mixes module.

bookcustom-models.ent
             The DTD-specific content model over-rides 
             for this Book DTD. Used to over-ride the Suite
             default models.
             
             Declared in %bookcustom-modules.ent;
             Must be invoked before the all the DTD Suite
             modules since it is used to over-ride them.
          
             There are two types of such over-rides. Those 
             that replace a complete content model are
             named with a suffix "-model". Those that are 
             OR-groups of elements, intended to be mixed 
             with #PCDATA inside a particular model are 
             named with an "-elements" suffix.

The new content models for book

bookimagemap.ent
             Content models and attributes for the Image
             Map elements, new with this DTD

bookmeta.ent Content models and attributes for the new
             metadata elements (such as <book-title>)
             new with this DTD

bookmultilink.ent
             Content models and attributes for the 
             Book-DTD-specific external linking element 
             multi-link, new with this DTD

bookpart.ent Content models and attributes for the book
             components (such as chapters, parts, modules,
             and units) which have all been named as
             <book-part>s, new with this DTD

------------------------------------------------------
2.2 Modules Specific to the Collection

Catalog File

bookcollection.dtd
             Define elements used to describe collections
             (aggregations) of books. Such a collection is
             more than a single work, it is a group of works
             organized according to some principle.
             
             This DTD uses the modules and over-rides
             created NLM Book DTD 2.0, on the theory that
             collections of books should stay in sync
             with books.


------------------------------------------------------

2.3 Basic Suite modules (delivered READ-ONLY, for convenience)

articlemeta.ent  - Article-level metadata elements 
backmatter.ent   - Article-level back matter elements
chars.ent        - Definitions of NLM-specific characters 
common.ent       - Elements, etc. used by more than one module
display.ent      - Display elements such as Table, Figure, Graphic
format.ent       - Format-related elements such as Bold
htmltable.dtd    - XHTML Table Model
link.ent         - Linking elements such as X(Cross)-Reference
list.ent         - List elements
math.ent         - NLM-defined math elements such as Display Equation
mathml2-qname-1.mod - MathML module
mathml2.dtd      - MathML module
mathmlsetup.ent  - MathML module
mmlalias.ent     - MathML module
mmlextra.ent     - MathML module
modules.ent      - Names NLM Archiving and Interchange Suite modules
notat.ent        - Names all Notations used
para.ent         - Paragraph-level elements such as Block Quote
phrase.ent       - Phrase-level content-related elements
references.ent   - Bibliographic references
section.ent      - Section-level elements
XHTMLtablesetup.ent - XHTML Table Model
xmlspecchars.ent - Names all the standard special characters

isoamsa.ent
isoamsb.ent
isoamsc.ent
isoamsn.ent
isoamso.ent
isoamsr.ent
isobox.ent
isocyr1.ent
isocyr2.ent
isodia.ent
isogrk1.ent
isogrk2.ent
isogrk3.ent
isogrk4.ent
isolat1.ent
isolat2.ent
isomfrk.ent
isomopf.ent
isomscr.ent
isonum.ent
isopub.ent
isotech.ent
 
 
------------------------------------------------------
2.4 Sample Files for Testing

 - samplemin-book.xml 
           Minimal start/end book to test the NLM Book DTD

 - samplesmall-book.xml 
           Small sample with content to test the NLM Book DTD

 - samplecollection.xml 
           Small sample with content to test the Collection DTD



-------------  document end -------------------------------






















