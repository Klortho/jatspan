DELIVERY LETTER FOR THE NLM HISTORICAL DTD 
             (Historical (Purple) Version 2.2 dated 20061013)

                                               October 2006

------------------------------------------------------

This README describes:

   1.0 The NLM Historical Book DTD Version 2.2
   2.0 Files in This Delivery
       2.1  Catalog files
       2.2  Modules Specific to the Historical DTD
       2.3  Modules Specific to the NLM Book DTD
       2.3  DTD Suite: Critical Base Modules
       2.5  DTD Suite: Element Class Modules
       2.6  DTD Suite: Math Modules 
       2.7  DTD Suite: Table Modules
       2.8  DTD Suite: Notations and Special Characters
       2.9  Sample files for testing

------------------------------------------------------

1.0 NLM Historical Book DTD (Purple) VERSION 2.2 Oct 2006

NOTE: The Historical DTD is built on top of the NLM Book DTD.
So, Historical classes over-ride Book classes which over-ride
default classes, invoked in this order:
   %historical-classes.ent;
   %bookcustom-classes.ent;
   %default-classes.ent;
Similarly, Historical mixes over-ride book mixes, which
override default mixes:
   %historical-mixes.ent;
   %bookcustom-mixes.ent;
   %default-mixes.ent;
and Historical models over-ride book models which over-ride
Suite models:
  %historical-models.ent; 
  %bookcustom-models.ent;


In Version 2.2, the Book DTD, Book Collection DTD, and the 
Archiving and Interchange DTD Suite modules were modified to: 
  * Use the latest (Version 2.2) NLM DTD Suite; and
  * Make minor changes requested by NLM (such as adding 
    permission and keyword elements to the Section Metadata
    element).

There were no changes to any of the historical-particular
components, but since the underlying Book DTD modules
changed, Historical was changed to match.

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
2.2 Modules Specific to the Historical DTD


historical.dtd     
             Main DTD for the NLM Historical Book DTD, a 
             DOCTYPE that covers monographs, reference 
             books, and similar works, usually for 
             historical material, some of it incunabula. 
             
             This DTD invokes all the modules in the 
             NLM Book DTD and almost all the modules in 
             the base NLM Archiving and Interchange
             DTD Suite.

historical-modules.ent 
             Names all new modules created specifically
             for this Historical Book DTD (therefore not 
             part of either the regular NLM Book DTD or
             the base DTD Suite)
               
             This module must be called as the first 
             module in the DTD, just before the Book
             Module of Modules %bookcustom-modules.ent;
             (which this module supplements) and both
             before the base Suite module of modules
             %modules.ent;.

historical-classes.ent
             The DTD-specific class definitions for 
             this Historical Book DTD. Used to over-ride 
             both the NLM Book DTD class over-rides and 
             the Suite default classes. 
             
             Declared in %historical-modules.ent;
             Must be invoked in the DTD file before the
             book custom classes module and the Suite 
             default classes module.

historical-mixes.ent
             The DTD-specific mix definitions for
             this Historical Book DTD. Used to over-ride
             both the NLM Book DTD mix over-rides and 
             the Suite default mixes. 
             
             Declared in %historical-modules.ent;
             Must be invoked in the DTD file before the
             book custom mixes module and the Suite 
             default mixes module.

historical-models.ent
             The DTD-specific content model over-rides 
             for this Historical DTD. Used to over-ride 
             both the Book DTD and the Suite default models.             
             
             Declared in %historical-modules.ent;
             Must be invoked before the Book custom models
             as well as all the DTD Suite modules since 
             it may over-ride either.

The historical-specific content modules that were added to
            the Suite as part of the Historical DTD:

annotation.ent
             Content models and attributes for elements
             that describe the variety of material added 
             to the original text of older books and 
             historical editions, for example, editorial 
             emendations and additions as well as the 
             need to record page numbers.


historicalmeta.ent
             Metadata elements that have been added
             specifically for this DTD, for example, the
             <printer> element and the digital edition
             metadata element (as opposed to the printed 
             book's metadata element).


------------------------------------------------------

2.3 Modules Specific to the NLM Book DTD


book.dtd     Main DTD for NLM Book DTD, a DOCTYPE that 
             covers monographs, reference books, and
             similar works. This DTD invokes almost all the 
             modules in the NLM Archiving and Interchange
             DTD Suite.

bookcustom-modules.ent 
             Names all new modules created specifically
             for the Book DTD (therefore not part of
             the base DTD Suite)
               
             This module must be called as the second 
             module in the DTD, just before the Suite 
             Module of Modules %modules.ent;, which it
             supplements, but after the Historical
             module of modules.
             
bookcustom-classes.ent
             The DTD-specific class definitions for the 
             Book DTD. Used to over-ride the Suite
             default classes. 
             
             Declared in %bookcustom-modules.ent;
             Must be invoked in the DTD file before the 
             default classes module, but after the 
             Historical classes module.

bookcustom-mixes.ent
             The DTD-specific mix definitions for the 
             Book DTD. Used to over-ride the Suite
             default mixes. 
             
             Declared in %bookcustom-modules.ent;
             Must be invoked in the DTD file before the 
             default mixes module, but after the Historical
             mixes module.

bookcustom-models.ent
             The DTD-specific content model over-rides 
             for the Book DTD. Used to over-ride the Suite
             default models.
             
             Declared in %bookcustom-modules.ent;
             Must be invoked before all of the DTD Suite
             modules since it is used to over-ride them,
             but after the Historical models over-ride module,
             which may over-ride it.
          
             There are two types of such over-rides. Those 
             that replace a complete content model are
             named with a suffix "-model". Those that are 
             OR-groups of elements (intended to be mixed 
             with #PCDATA inside a particular model) are 
             named with an "-elements" suffix.

The Book-specific modules added for the NLM Book DTD:

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

2.4 DTD Suite: Critical Base Modules

modules.ent      - Names all the modules in the NLM 
                   Archiving and Interchange DTD Suite                   
                   
                   Must be called as the third module
                   by any DTD, after both the Historical-
                   specific and the Book-specific module
                   of modules and before all other 
                   modules.
                   
                   NOTE: May name modules (such as the 
                   OASIS-Exchange module) that are not called 
                   by a particular DTD.

common.ent       - Defines all elements, attributes, and
                   entities used by more than one module
                   
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
                   the <private-char> element) 

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

2.9 Sample files for testing the Historical Tag Set

samplesmall-book.xml -  Minimal document to test 
                        the NLM Book DTD, which tests
                        those parts of the Book DTD used 
                        by this Historical Book DTD 


samplesmall-historical.xml
                     -  Minimal document for testing the
                        Historical Book DTD

sample-historical-mathml.xml     
                      - Minimal document used to test
                        the MathML modules used in 
                        Historical Book DTD

-------------  document end -------------------------------






















