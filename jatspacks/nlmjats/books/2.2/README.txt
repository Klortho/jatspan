Delivery Letter for the NLM Book DTD and Book Collection 
         (Book DTD Version 2.2 dated 20061013)
         (Book Collection DTD Version 2.2 dated 20061013)
                                                October 2006
                                      Redelivery 31 October 2006

------------------------------------------------------

This README describes:

   1.0 The NLM Book and Book Collection DTDs Version 2.2
   2.0 Files in This Delivery
       2.1  Catalog Files
       2.2  Modules Specific to the Book (Purple) DTD
       2.3  Modules Specific to the Collection DTD
       2.4  DTD Suite: Critical Base Modules
       2.5  DTD Suite: Element Class Modules
       2.6  DTD Suite: Math Modules 
       2.7  DTD Suite: Table Modules
       2.8  DTD Suite: Notations and Special Characters
       2.9  Sample files for testing

------------------------------------------------------

1.0 NLM Book and Book Collection DTDs (Purple) 
                                      VERSION 2.2 Oct 2006

In Version 2.2, the Book DTD, Book Collection DTD, and the 
Archiving and Interchange DTD Suite modules were modified to: 
  * Use the latest (Version 2.2) NLM DTD Suite; and
  * Make minor changes requested by NLM (such as adding 
    permission and keyword elements to the Section Metadata
    element).

------------------------------------------------------

2.0 FILES IN THIS DELIVERY


------------------------------------------------------

2.1 Catalog Files

These files are not part of the DTD Suite proper, but 
are provided as a convenience to implementors.

catalog-v2.xml - XML catalog made according to the
                 OASIS DTD Entity Resolution XML Catalog V2.1
"http://www.oasis-open.org/committees/entity/release/1.0/catalog.dtd"


catalog.ent - OASIS SOCAT catalog of the fpi and file names.
              This is the old style OASIS catalog, similar to
              SGML catalogs.

------------------------------------------------------

2.2 Modules Specific to the Book (Purple) DTD


book.dtd     Main DTD for NLM Book DTD, a DOCTYPE that 
             covers monographs, reference books, and
             similar works. This DTD invokes almost all the 
             modules in the NLM Archiving and Interchange
             DTD Suite.

bookcustom-modules.ent 
             Names all new modules created specifically
             for this Book DTD (therefore not part of
             the base DTD Suite)
               
             This module must be called as the first 
             module in the DTD, just before the Suite 
             Module of Modules %modules.ent;, which it
             supplements.

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
             Must be invoked before all of the DTD Suite
             modules since it is used to over-ride them.
          
             There are two types of such over-rides. Those 
             that replace a complete content model are
             named with a suffix "-model". Those that are 
             OR-groups of elements (intended to be mixed 
             with #PCDATA inside a particular model) are 
             named with an "-elements" suffix.

The book-specific content modules used by both the Book and 
Book Collection DTDs:

bookimagemap.ent
             Content models and attributes for the Image
             Map elements; particular to the book DTDs

bookmeta.ent Content models and attributes for the new
             metadata elements (such as <book-title>);
             particular to the book DTDs

bookmultilink.ent
             Content models and attributes for the 
             Book-DTD-specific external linking element 
             <multi-link>; particular to the book DTDs

bookpart.ent Content models and attributes for the book
             components (such as chapters, parts, modules,
             and units) which have all been named as
             <book-part>s; particular to the book DTDs

------------------------------------------------------
2.3 Modules Specific to the Collection DTD

bookcollection.dtd
             Defines elements used to describe collections
             (aggregations) of books. Such a collection is
             more than a single work; it is a group of works
             organized according to some principle.
             
             This DTD uses the modules and over-rides
             created NLM Book DTD 2.2, on the theory that
             collections of books should stay in sync
             with books. Collection adds the following
             new module:


bookrelated-object.ent 
             Defines the element <related-object>. Placed
             in its own module because this element has
             been requested for the entire Suite and is
             expected to be added in full release 3.0;
             particular to the book DTDs

------------------------------------------------------

2.4 DTD Suite: Critical Base Modules

modules.ent      - Names all the modules in the NLM 
                   Archiving and Interchange DTD Suite
                   
                   Must be called as the second module
                   by any DTD, after the DTD-specific module
                   of modules (if any) and before all other 
                   modules.
                   
                   NOTE: May name modules (such as the 
                   OASIS-Exchange module) that are not called 
                   by a particular DTD.

common.ent       - Defines all elements, attributes, and
                   entities that are used by more than one 
                   other module
                   
                   Called after all module-of-modules modules
                   and all customization (over-ride) modules
                   but before all the class modules. 

These modules need to be invoked before all other modules 
in a DTD. Other modules can usually be invoked in any order.
They are listed below alphabetically.


------------------------------------------------------

2.5 DTD Suite: Element Class Modules 
               (Define elements and attributes for one class)

articlemeta.ent  - Article-level metadata elements 
backmatter.ent   - Article-level back matter elements
display.ent      - Display elements such as Table, Figure, Graphic
format.ent       - Format-related elements such as Bold
link.ent         - Linking elements such as X(Cross)-Reference
list.ent         - List elements
math.ent         - NLM-defined math elements such as Display Equation
para.ent         - Paragraph-level elements such as Paragraph and
                      Block Quote
phrase.ent       - Phrase-level content-related elements
references.ent   - Bibliographic reference list and the elements
                      that can be used inside a citation
section.ent      - Section-level elements


------------------------------------------------------

2.6 DTD Suite: Math Modules 
               (Define MathML tagging, used in %math.ent;)

These modules are defined in the Suite and should be invoked
from the DTD if MathML tagging is desired.

mathmlsetup.ent  - DTD Suite module that sets the parameter
                   entities for the MathML modules

The top-level MathML modules:
  mathml2.dtd
  mathml2-qname-1.mod

And inside the mathml subdirectory:
  mmlalias.ent
  mmlextra.ent

 
------------------------------------------------------

2.7 DTD Suite: Table Modules 
               (Define XHTML Table Model)

These modules are defined in the Suite and should be invoked
from the DTD if table tagging is desired.

XHTML Table Model:
  XHTMLtablesetup.ent
  htmltable.dtd


------------------------------------------------------

2.8 DTD Suite: Notations and Special Characters

notat.ent        - Names all Notations used

chars.ent        - Defines NLM-specific and custom special
                   characters (as general entities defined
                   as hexadecimal or decimal character
                   entities [Unicode numbers] or by using
                   the <private-char> element).

xmlspecchars.ent - Names all the standard special character
                   entity sets to be used by the DTD. The
                   MathML characters sets were used,
                   unchanged, in the same directory
                   structure used for MathML.

All the MathML special character entity sets:

(inside the iso8879 subdirectory)
  isobox.ent
  isocyr1.ent
  isocyr2.ent
  isodia.ent
  isolat1.ent
  isolat2.ent
  isonum.ent
  isopub.ent

(inside the iso9573-13 subdirectory)
  isoamsa.ent
  isoamsb.ent
  isoamsc.ent
  isoamsn.ent
  isoamso.ent
  isoamsr.ent
  isogrk3.ent
  isomfrk.ent
  isomopf.ent
  isomscr.ent
  isotech.ent

Special character entity sets NOT used in MathML
(included as part of the DTD for backwards compatibility)  

(inside the xmlchars subdirectory)
  isogrk1.ent
  isogrk2.ent
  isogrk4.ent
 
 
------------------------------------------------------

2.9 Sample files for testing the Book and Collection Tag Sets

samplesmall-book.xml  - Minimal document used to test
                        the NLM Book DTD

samplecollection.xml  - Minimal document used to test
                        the Book Collection DTD

sample-collection-mathml.xml     
                      - Minimal document used to test
                        the MathML modules used in 
                        Book Collection DTD

                       
-------------  document end -------------------------------



















