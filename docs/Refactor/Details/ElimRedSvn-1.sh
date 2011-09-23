echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite XML Special Characters Module v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/xmlspecchars.ent core/1.0/dtd/
svn del ./archiving/1.1/dtd/xmlspecchars.ent
svn del ./publishing/1.0/dtd/xmlspecchars.ent
svn del ./publishing/1.1/dtd/xmlspecchars.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Back Matter Elements v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/backmatter.ent core/1.0/dtd/
svn del ./archiving/1.1/dtd/backmatter.ent
svn del ./publishing/1.0/dtd/backmatter.ent
svn del ./publishing/1.1/dtd/backmatter.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Back Matter Elements v2.0 20040830//EN'
svn move ./archiving/2.0/dtd/backmatter.ent core/2.0/dtd/
svn del ./books/2.0/dtd/backmatter.ent
svn del ./publishing/2.0/dtd/backmatter.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Back Matter Elements v2.1 20050630//EN'
svn move ./archiving/2.2/dtd/backmatter.ent core/2.1/dtd/
svn del ./archiving/2.1/dtd/backmatter.ent
svn del ./authoring/2.1/dtd/backmatter.ent
svn del ./books/2.1/dtd/backmatter.ent
svn del ./historical/2.1/dtd/backmatter.ent
svn del ./publishing/2.1/dtd/backmatter.ent
svn del ./authoring/2.2/dtd/backmatter.ent
svn del ./books/2.2/dtd/backmatter.ent
svn del ./historical/2.2/dtd/backmatter.ent
svn del ./publishing/2.2/dtd/backmatter.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Back Matter Elements v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/backmatter.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/backmatter.ent
svn del ./authoring/2.3/dtd/backmatter.ent
svn del ./books/2.3/dtd/backmatter.ent
svn del ./historical/2.3/dtd/backmatter.ent
svn del ./publishing-oasis/2.3/dtd/backmatter.ent
svn del ./publishing/2.3/dtd/backmatter.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Back Matter Elements v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/backmatter3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/backmatter3.ent
svn del ./authoring/3.0/dtd/backmatter3.ent
svn del ./books/3.0/dtd/backmatter3.ent
svn del ./publishing-oasis/3.0/dtd/backmatter3.ent
svn del ./publishing/3.0/dtd/backmatter3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Bibliographic Reference (Citation) Class Elements v1.0 20021201//EN'
svn move ./archiving/1.1/dtd/references.ent core/1.0/dtd/
svn del ./archiving/1.0/dtd/references.ent
svn del ./publishing/1.0/dtd/references.ent
svn del ./publishing/1.1/dtd/references.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Bibliographic Reference (Citation) Class Elements v2.0 20040830//EN'
svn move ./books/2.0/dtd/references.ent core/2.0/dtd/
svn del ./archiving/2.0/dtd/references.ent
svn del ./publishing/2.0/dtd/references.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Bibliographic Reference (Citation) Class Elements v2.1 20050630//EN'
svn move ./archiving/2.1/dtd/references.ent core/2.1/dtd/
svn del ./authoring/2.1/dtd/references.ent
svn del ./books/2.1/dtd/references.ent
svn del ./historical/2.1/dtd/references.ent
svn del ./publishing/2.1/dtd/references.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Bibliographic Reference (Citation) Class Elements v2.2 20060430//EN'
svn move ./archiving/2.2/dtd/references.ent core/2.2/dtd/
svn del ./authoring/2.2/dtd/references.ent
svn del ./books/2.2/dtd/references.ent
svn del ./historical/2.2/dtd/references.ent
svn del ./publishing/2.2/dtd/references.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Bibliographic Reference (Citation) Class Elements v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/references.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/references.ent
svn del ./authoring/2.3/dtd/references.ent
svn del ./books/2.3/dtd/references.ent
svn del ./historical/2.3/dtd/references.ent
svn del ./publishing-oasis/2.3/dtd/references.ent
svn del ./publishing/2.3/dtd/references.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Bibliographic Reference (Citation) Class Elements v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/references3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/references3.ent
svn del ./authoring/3.0/dtd/references3.ent
svn del ./books/3.0/dtd/references3.ent
svn del ./publishing-oasis/3.0/dtd/references3.ent
svn del ./publishing/3.0/dtd/references3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Common (Shared) Elements Module v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/common.ent core/1.0/dtd/
svn del ./publishing/1.0/dtd/common.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Common (Shared) Elements Module v1.1 20031101//EN'
svn move ./archiving/1.1/dtd/common.ent core/1.1/dtd/
svn del ./publishing/1.1/dtd/common.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Common (Shared) Elements Module v2.0 20040830//EN'
svn move ./archiving/2.0/dtd/common.ent core/2.0/dtd/
svn del ./books/2.0/dtd/common.ent
svn del ./publishing/2.0/dtd/common.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Common (Shared) Elements Module v2.1 20050630//EN'
svn move ./archiving/2.1/dtd/common.ent core/2.1/dtd/
svn del ./authoring/2.1/dtd/common.ent
svn del ./books/2.1/dtd/common.ent
svn del ./historical/2.1/dtd/common.ent
svn del ./publishing/2.1/dtd/common.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Common (Shared) Elements Module v2.2 20060430//EN'
svn move ./archiving/2.2/dtd/common.ent core/2.2/dtd/
svn del ./authoring/2.2/dtd/common.ent
svn del ./books/2.2/dtd/common.ent
svn del ./historical/2.2/dtd/common.ent
svn del ./publishing/2.2/dtd/common.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Common (Shared) Elements Module v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/common.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/common.ent
svn del ./authoring/2.3/dtd/common.ent
svn del ./books/2.3/dtd/common.ent
svn del ./historical/2.3/dtd/common.ent
svn del ./publishing-oasis/2.3/dtd/common.ent
svn del ./publishing/2.3/dtd/common.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Common (Shared) Elements Module v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/common3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/common3.ent
svn del ./authoring/3.0/dtd/common3.ent
svn del ./books/3.0/dtd/common3.ent
svn del ./publishing-oasis/3.0/dtd/common3.ent
svn del ./publishing/3.0/dtd/common3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Custom Special Characters Module v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/chars.ent core/1.0/dtd/
svn del ./publishing/1.0/dtd/chars.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Custom Special Characters Module v1.1 20031101//EN'
svn move ./archiving/1.1/dtd/chars.ent core/1.1/dtd/
svn del ./publishing/1.1/dtd/chars.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Custom Special Characters Module v2.0 20040830//EN'
svn move ./archiving/2.0/dtd/chars.ent core/2.0/dtd/
svn del ./archiving/2.1/dtd/chars.ent
svn del ./archiving/2.2/dtd/chars.ent
svn del ./authoring/2.1/dtd/chars.ent
svn del ./authoring/2.2/dtd/chars.ent
svn del ./books/2.0/dtd/chars.ent
svn del ./books/2.1/dtd/chars.ent
svn del ./books/2.2/dtd/chars.ent
svn del ./historical/2.1/dtd/chars.ent
svn del ./historical/2.2/dtd/chars.ent
svn del ./publishing/2.0/dtd/chars.ent
svn del ./publishing/2.1/dtd/chars.ent
svn del ./publishing/2.2/dtd/chars.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Custom Special Characters Module v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/chars.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/chars.ent
svn del ./authoring/2.3/dtd/chars.ent
svn del ./books/2.3/dtd/chars.ent
svn del ./historical/2.3/dtd/chars.ent
svn del ./publishing-oasis/2.3/dtd/chars.ent
svn del ./publishing/2.3/dtd/chars.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Custom Special Characters Module v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/chars3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/chars3.ent
svn del ./authoring/3.0/dtd/chars3.ent
svn del ./books/3.0/dtd/chars3.ent
svn del ./publishing-oasis/3.0/dtd/chars3.ent
svn del ./publishing/3.0/dtd/chars3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Display Class Elements v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/display.ent core/1.0/dtd/
svn del ./publishing/1.0/dtd/display.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Display Class Elements v1.1 20031101//EN'
svn move ./archiving/1.1/dtd/display.ent core/1.1/dtd/
svn del ./publishing/1.1/dtd/display.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Display Class Elements v2.0 20040830//EN'
svn move ./books/2.0/dtd/display.ent core/2.0/dtd/
svn del ./archiving/2.0/dtd/display.ent
svn del ./publishing/2.0/dtd/display.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Display Class Elements v2.1 20050630//EN'
svn move ./archiving/2.1/dtd/display.ent core/2.1/dtd/
svn del ./authoring/2.1/dtd/display.ent
svn del ./books/2.1/dtd/display.ent
svn del ./historical/2.1/dtd/display.ent
svn del ./publishing/2.1/dtd/display.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Display Class Elements v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/display.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/display.ent
svn del ./authoring/2.3/dtd/display.ent
svn del ./books/2.3/dtd/display.ent
svn del ./historical/2.3/dtd/display.ent
svn del ./publishing-oasis/2.3/dtd/display.ent
svn del ./publishing/2.3/dtd/display.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Display Class Elements v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/display3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/display3.ent
svn del ./authoring/3.0/dtd/display3.ent
svn del ./books/3.0/dtd/display3.ent
svn del ./publishing-oasis/3.0/dtd/display3.ent
svn del ./publishing/3.0/dtd/display3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Formatting Element Classes v1.0 20021201//EN'
svn move ./archiving/1.1/dtd/format.ent core/1.0/dtd/
svn del ./archiving/1.0/dtd/format.ent
svn del ./publishing/1.0/dtd/format.ent
svn del ./publishing/1.1/dtd/format.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Formatting Element Classes v2.0 20040830//EN'
svn move ./archiving/2.0/dtd/format.ent core/2.0/dtd/
svn del ./archiving/2.1/dtd/format.ent
svn del ./archiving/2.2/dtd/format.ent
svn del ./authoring/2.1/dtd/format.ent
svn del ./authoring/2.2/dtd/format.ent
svn del ./books/2.0/dtd/format.ent
svn del ./books/2.1/dtd/format.ent
svn del ./books/2.2/dtd/format.ent
svn del ./historical/2.1/dtd/format.ent
svn del ./historical/2.2/dtd/format.ent
svn del ./publishing/2.0/dtd/format.ent
svn del ./publishing/2.1/dtd/format.ent
svn del ./publishing/2.2/dtd/format.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Formatting Element Classes v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/format.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/format.ent
svn del ./authoring/2.3/dtd/format.ent
svn del ./books/2.3/dtd/format.ent
svn del ./historical/2.3/dtd/format.ent
svn del ./publishing-oasis/2.3/dtd/format.ent
svn del ./publishing/2.3/dtd/format.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Formatting Element Classes v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/format3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/format3.ent
svn del ./authoring/3.0/dtd/format3.ent
svn del ./books/3.0/dtd/format3.ent
svn del ./publishing-oasis/3.0/dtd/format3.ent
svn del ./publishing/3.0/dtd/format3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Funding Elements v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/funding3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/funding3.ent
svn del ./authoring/3.0/dtd/funding3.ent
svn del ./books/3.0/dtd/funding3.ent
svn del ./publishing-oasis/3.0/dtd/funding3.ent
svn del ./publishing/3.0/dtd/funding3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Journal Article Metadata Elements v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/articlemeta.ent core/1.0/dtd/
svn del ./publishing/1.0/dtd/articlemeta.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Journal Article Metadata Elements v1.1 20031101//EN'
svn move ./archiving/1.1/dtd/articlemeta.ent core/1.1/dtd/
svn del ./publishing/1.1/dtd/articlemeta.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Journal Article Metadata Elements v2.0 20040830//EN'
svn move ./books/2.0/dtd/articlemeta.ent core/2.0/dtd/
svn del ./archiving/2.0/dtd/articlemeta.ent
svn del ./publishing/2.0/dtd/articlemeta.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Journal Article Metadata Elements v2.1 20050630//EN'
svn move ./archiving/2.1/dtd/articlemeta.ent core/2.1/dtd/
svn del ./authoring/2.1/dtd/articlemeta.ent
svn del ./books/2.1/dtd/articlemeta.ent
svn del ./historical/2.1/dtd/articlemeta.ent
svn del ./publishing/2.1/dtd/articlemeta.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Journal Article Metadata Elements v2.2 20060430//EN'
svn move ./books/2.2/dtd/articlemeta.ent core/2.2/dtd/
svn del ./archiving/2.2/dtd/articlemeta.ent
svn del ./authoring/2.2/dtd/articlemeta.ent
svn del ./publishing/2.2/dtd/articlemeta.ent
svn del ./historical/2.2/dtd/articlemeta.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Journal Article Metadata Elements v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/articlemeta.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/articlemeta.ent
svn del ./authoring/2.3/dtd/articlemeta.ent
svn del ./books/2.3/dtd/articlemeta.ent
svn del ./historical/2.3/dtd/articlemeta.ent
svn del ./publishing-oasis/2.3/dtd/articlemeta.ent
svn del ./publishing/2.3/dtd/articlemeta.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Journal Article Metadata Elements v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/articlemeta3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/articlemeta3.ent
svn del ./authoring/3.0/dtd/articlemeta3.ent
svn del ./books/3.0/dtd/articlemeta3.ent
svn del ./publishing-oasis/3.0/dtd/articlemeta3.ent
svn del ./publishing/3.0/dtd/articlemeta3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Journal Metadata Elements v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/journalmeta.ent core/1.0/dtd/
svn del ./publishing/1.0/dtd/journalmeta.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Journal Metadata Elements v1.1 20031101//EN'
svn move ./archiving/1.1/dtd/journalmeta.ent core/1.1/dtd/
svn del ./publishing/1.1/dtd/journalmeta.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Journal Metadata Elements v2.0 20040830//EN'
svn move ./archiving/2.0/dtd/journalmeta.ent core/2.0/dtd/
svn del ./books/2.0/dtd/journalmeta.ent
svn del ./publishing/2.0/dtd/journalmeta.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Journal Metadata Elements v2.1 20050630//EN'
svn move ./archiving/2.2/dtd/journalmeta.ent core/2.1/dtd/
svn del ./archiving/2.1/dtd/journalmeta.ent
svn del ./authoring/2.1/dtd/journalmeta.ent
svn del ./books/2.1/dtd/journalmeta.ent
svn del ./historical/2.1/dtd/journalmeta.ent
svn del ./publishing/2.1/dtd/journalmeta.ent
svn del ./authoring/2.2/dtd/journalmeta.ent
svn del ./publishing/2.2/dtd/journalmeta.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Journal Metadata Elements v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/journalmeta.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/journalmeta.ent
svn del ./authoring/2.3/dtd/journalmeta.ent
svn del ./publishing-oasis/2.3/dtd/journalmeta.ent
svn del ./publishing/2.3/dtd/journalmeta.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Journal Metadata Elements v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/journalmeta3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/journalmeta3.ent
svn del ./authoring/3.0/dtd/journalmeta3.ent
svn del ./books/3.0/dtd/journalmeta3.ent
svn del ./publishing-oasis/3.0/dtd/journalmeta3.ent
svn del ./publishing/3.0/dtd/journalmeta3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Link Class Elements v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/link.ent core/1.0/dtd/
svn del ./publishing/1.0/dtd/link.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Link Class Elements v1.1 20031101//EN'
svn move ./archiving/1.1/dtd/link.ent core/1.1/dtd/
svn del ./publishing/1.1/dtd/link.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Link Class Elements v2.0 20040830//EN'
svn move ./archiving/2.0/dtd/link.ent core/2.0/dtd/
svn del ./books/2.0/dtd/link.ent
svn del ./publishing/2.0/dtd/link.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Link Class Elements v2.1 20050630//EN'
svn move ./archiving/2.2/dtd/link.ent core/2.1/dtd/
svn del ./archiving/2.1/dtd/link.ent
svn del ./authoring/2.1/dtd/link.ent
svn del ./books/2.1/dtd/link.ent
svn del ./historical/2.1/dtd/link.ent
svn del ./publishing/2.1/dtd/link.ent
svn del ./authoring/2.2/dtd/link.ent
svn del ./books/2.2/dtd/link.ent
svn del ./historical/2.2/dtd/link.ent
svn del ./publishing/2.2/dtd/link.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Link Class Elements v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/link.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/link.ent
svn del ./authoring/2.3/dtd/link.ent
svn del ./books/2.3/dtd/link.ent
svn del ./historical/2.3/dtd/link.ent
svn del ./publishing-oasis/2.3/dtd/link.ent
svn del ./publishing/2.3/dtd/link.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Link Class Elements v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/link3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/link3.ent
svn del ./authoring/3.0/dtd/link3.ent
svn del ./books/3.0/dtd/link3.ent
svn del ./publishing-oasis/3.0/dtd/link3.ent
svn del ./publishing/3.0/dtd/link3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite List Class Elements v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/list.ent core/1.0/dtd/
svn del ./publishing/1.0/dtd/list.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite List Class Elements v1.1 20031101//EN'
svn move ./archiving/1.1/dtd/list.ent core/1.1/dtd/
svn del ./publishing/1.1/dtd/list.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite List Class Elements v2.0 20040830//EN'
svn move ./books/2.0/dtd/list.ent core/2.0/dtd/
svn del ./archiving/2.0/dtd/list.ent
svn del ./publishing/2.0/dtd/list.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite List Class Elements v2.1 20050630//EN'
svn move ./archiving/2.2/dtd/list.ent core/2.1/dtd/
svn del ./archiving/2.1/dtd/list.ent
svn del ./authoring/2.1/dtd/list.ent
svn del ./books/2.1/dtd/list.ent
svn del ./historical/2.1/dtd/list.ent
svn del ./publishing/2.1/dtd/list.ent
svn del ./authoring/2.2/dtd/list.ent
svn del ./books/2.2/dtd/list.ent
svn del ./historical/2.2/dtd/list.ent
svn del ./publishing/2.2/dtd/list.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite List Class Elements v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/list.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/list.ent
svn del ./authoring/2.3/dtd/list.ent
svn del ./books/2.3/dtd/list.ent
svn del ./historical/2.3/dtd/list.ent
svn del ./publishing-oasis/2.3/dtd/list.ent
svn del ./publishing/2.3/dtd/list.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite List Class Elements v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/list3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/list3.ent
svn del ./authoring/3.0/dtd/list3.ent
svn del ./books/3.0/dtd/list3.ent
svn del ./publishing-oasis/3.0/dtd/list3.ent
svn del ./publishing/3.0/dtd/list3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Math Class Elements v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/math.ent core/1.0/dtd/
svn del ./publishing/1.0/dtd/math.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Math Class Elements v1.1 20031101//EN'
svn move ./archiving/1.1/dtd/math.ent core/1.1/dtd/
svn del ./publishing/1.1/dtd/math.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Math Class Elements v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/math.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/math.ent
svn del ./authoring/2.3/dtd/math.ent
svn del ./books/2.3/dtd/math.ent
svn del ./historical/2.3/dtd/math.ent
svn del ./publishing-oasis/2.3/dtd/math.ent
svn del ./publishing/2.3/dtd/math.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Math Class Elements v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/math3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/math3.ent
svn del ./authoring/3.0/dtd/math3.ent
svn del ./books/3.0/dtd/math3.ent
svn del ./publishing-oasis/3.0/dtd/math3.ent
svn del ./publishing/3.0/dtd/math3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite MathML Setup Module v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/mathmlsetup.ent core/1.0/dtd/
svn del ./publishing/1.0/dtd/mathmlsetup.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite MathML Setup Module v1.1 20031101//EN'
svn move ./archiving/1.1/dtd/mathmlsetup.ent core/1.1/dtd/
svn del ./publishing/1.1/dtd/mathmlsetup.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite MathML Setup Module v2.0 20040830//EN'
svn move ./archiving/2.0/dtd/mathmlsetup.ent core/2.0/dtd/
svn del ./books/2.0/dtd/mathmlsetup.ent
svn del ./publishing/2.0/dtd/mathmlsetup.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite MathML Setup Module v2.1 20050630//EN'
svn move ./archiving/2.1/dtd/mathmlsetup.ent core/2.1/dtd/
svn del ./archiving/2.2/dtd/mathmlsetup.ent
svn del ./authoring/2.1/dtd/mathmlsetup.ent
svn del ./authoring/2.2/dtd/mathmlsetup.ent
svn del ./books/2.1/dtd/mathmlsetup.ent
svn del ./books/2.2/dtd/mathmlsetup.ent
svn del ./historical/2.1/dtd/mathmlsetup.ent
svn del ./historical/2.2/dtd/mathmlsetup.ent
svn del ./publishing/2.1/dtd/mathmlsetup.ent
svn del ./publishing/2.2/dtd/mathmlsetup.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite MathML Setup Module v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/mathmlsetup.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/mathmlsetup.ent
svn del ./authoring/2.3/dtd/mathmlsetup.ent
svn del ./books/2.3/dtd/mathmlsetup.ent
svn del ./historical/2.3/dtd/mathmlsetup.ent
svn del ./publishing-oasis/2.3/dtd/mathmlsetup.ent
svn del ./publishing/2.3/dtd/mathmlsetup.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite MathML Setup Module v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/mathmlsetup3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/mathmlsetup3.ent
svn del ./authoring/3.0/dtd/mathmlsetup3.ent
svn del ./books/3.0/dtd/mathmlsetup3.ent
svn del ./publishing-oasis/3.0/dtd/mathmlsetup3.ent
svn del ./publishing/3.0/dtd/mathmlsetup3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Module of Modules v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/modules.ent core/1.0/dtd/
svn del ./publishing/1.0/dtd/modules.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Module of Modules v1.1 20031101//EN'
svn move ./archiving/1.1/dtd/modules.ent core/1.1/dtd/
svn del ./publishing/1.1/dtd/modules.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Module of Modules v2.0 20040830//EN'
svn move ./archiving/2.0/dtd/modules.ent core/2.0/dtd/
svn del ./books/2.0/dtd/modules.ent
svn del ./publishing/2.0/dtd/modules.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Module of Modules v2.1 20050630//EN'
svn move ./archiving/2.1/dtd/modules.ent core/2.1/dtd/
svn del ./authoring/2.1/dtd/modules.ent
svn del ./books/2.1/dtd/modules.ent
svn del ./historical/2.1/dtd/modules.ent
svn del ./publishing/2.1/dtd/modules.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Module of Modules v2.2 20060430//EN'
svn move ./archiving/2.2/dtd/modules.ent core/2.2/dtd/
svn del ./authoring/2.2/dtd/modules.ent
svn del ./books/2.2/dtd/modules.ent
svn del ./historical/2.2/dtd/modules.ent
svn del ./publishing/2.2/dtd/modules.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Module of Modules v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/modules.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/modules.ent
svn del ./authoring/2.3/dtd/modules.ent
svn del ./books/2.3/dtd/modules.ent
svn del ./historical/2.3/dtd/modules.ent
svn del ./publishing-oasis/2.3/dtd/modules.ent
svn del ./publishing/2.3/dtd/modules.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Module of Modules v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/modules3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/modules3.ent
svn del ./authoring/3.0/dtd/modules3.ent
svn del ./books/3.0/dtd/modules3.ent
svn del ./publishing-oasis/3.0/dtd/modules3.ent
svn del ./publishing/3.0/dtd/modules3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Notation Declarations v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/notat.ent core/1.0/dtd/
svn del ./archiving/1.1/dtd/notat.ent
svn del ./publishing/1.0/dtd/notat.ent
svn del ./publishing/1.1/dtd/notat.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Notation Declarations v2.0 20040830//EN'
svn move ./archiving/2.1/dtd/notat.ent core/2.0/dtd/
svn del ./archiving/2.0/dtd/notat.ent
svn del ./books/2.0/dtd/notat.ent
svn del ./publishing/2.0/dtd/notat.ent
svn del ./archiving/2.2/dtd/notat.ent
svn del ./authoring/2.1/dtd/notat.ent
svn del ./authoring/2.2/dtd/notat.ent
svn del ./books/2.1/dtd/notat.ent
svn del ./books/2.2/dtd/notat.ent
svn del ./historical/2.1/dtd/notat.ent
svn del ./historical/2.2/dtd/notat.ent
svn del ./publishing/2.1/dtd/notat.ent
svn del ./publishing/2.2/dtd/notat.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Notation Declarations v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/notat.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/notat.ent
svn del ./authoring/2.3/dtd/notat.ent
svn del ./books/2.3/dtd/notat.ent
svn del ./historical/2.3/dtd/notat.ent
svn del ./publishing-oasis/2.3/dtd/notat.ent
svn del ./publishing/2.3/dtd/notat.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Notation Declarations v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/notat3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/notat3.ent
svn del ./authoring/3.0/dtd/notat3.ent
svn del ./books/3.0/dtd/notat3.ent
svn del ./publishing-oasis/3.0/dtd/notat3.ent
svn del ./publishing/3.0/dtd/notat3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite OASIS XML Table Setup Module v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/oasis-tablesetup.ent core/1.0/dtd/
svn del ./publishing/1.0/dtd/oasis-tablesetup.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite OASIS XML Table Setup Module v1.1 20031101//EN'
svn move ./archiving/1.1/dtd/oasis-tablesetup.ent core/1.1/dtd/
svn del ./publishing/1.1/dtd/oasis-tablesetup.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Paragraph-Like Elements v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/para.ent core/1.0/dtd/
svn del ./publishing/1.0/dtd/para.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Paragraph-Like Elements v1.1 20031101//EN'
svn move ./archiving/1.1/dtd/para.ent core/1.1/dtd/
svn del ./publishing/1.1/dtd/para.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Paragraph-Like Elements v2.0 20040830//EN'
svn move ./archiving/2.0/dtd/para.ent core/2.0/dtd/
svn del ./books/2.0/dtd/para.ent
svn del ./publishing/2.0/dtd/para.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Paragraph-Like Elements v2.1 20050630//EN'
svn move ./archiving/2.1/dtd/para.ent core/2.1/dtd/
svn del ./authoring/2.1/dtd/para.ent
svn del ./books/2.1/dtd/para.ent
svn del ./historical/2.1/dtd/para.ent
svn del ./publishing/2.1/dtd/para.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Paragraph-Like Elements v2.2 20060430//EN'
svn move ./archiving/2.2/dtd/para.ent core/2.2/dtd/
svn del ./authoring/2.2/dtd/para.ent
svn del ./books/2.2/dtd/para.ent
svn del ./historical/2.2/dtd/para.ent
svn del ./publishing/2.2/dtd/para.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Paragraph-Like Elements v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/para.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/para.ent
svn del ./authoring/2.3/dtd/para.ent
svn del ./books/2.3/dtd/para.ent
svn del ./historical/2.3/dtd/para.ent
svn del ./publishing-oasis/2.3/dtd/para.ent
svn del ./publishing/2.3/dtd/para.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Paragraph-Like Elements v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/para3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/para3.ent
svn del ./authoring/3.0/dtd/para3.ent
svn del ./books/3.0/dtd/para3.ent
svn del ./publishing-oasis/3.0/dtd/para3.ent
svn del ./publishing/3.0/dtd/para3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Related Object Element v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/related-object3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/related-object3.ent
svn del ./authoring/3.0/dtd/related-object3.ent
svn del ./books/3.0/dtd/related-object3.ent
svn del ./publishing-oasis/3.0/dtd/related-object3.ent
svn del ./publishing/3.0/dtd/related-object3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Section Class Elements v1.0 20021201//EN'
svn move ./archiving/1.1/dtd/section.ent core/1.0/dtd/
svn del ./archiving/1.0/dtd/section.ent
svn del ./publishing/1.0/dtd/section.ent
svn del ./publishing/1.1/dtd/section.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Section Class Elements v2.0 20040830//EN'
svn move ./archiving/2.1/dtd/section.ent core/2.0/dtd/
svn del ./archiving/2.0/dtd/section.ent
svn del ./books/2.0/dtd/section.ent
svn del ./publishing/2.0/dtd/section.ent
svn del ./authoring/2.1/dtd/section.ent
svn del ./books/2.1/dtd/section.ent
svn del ./historical/2.1/dtd/section.ent
svn del ./publishing/2.1/dtd/section.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Section Class Elements v2.2 20060430//EN'
svn move ./archiving/2.2/dtd/section.ent core/2.2/dtd/
svn del ./authoring/2.2/dtd/section.ent
svn del ./books/2.2/dtd/section.ent
svn del ./historical/2.2/dtd/section.ent
svn del ./publishing/2.2/dtd/section.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Section Class Elements v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/section.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/section.ent
svn del ./authoring/2.3/dtd/section.ent
svn del ./books/2.3/dtd/section.ent
svn del ./historical/2.3/dtd/section.ent
svn del ./publishing-oasis/2.3/dtd/section.ent
svn del ./publishing/2.3/dtd/section.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Section Class Elements v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/section3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/section3.ent
svn del ./authoring/3.0/dtd/section3.ent
svn del ./books/3.0/dtd/section3.ent
svn del ./publishing-oasis/3.0/dtd/section3.ent
svn del ./publishing/3.0/dtd/section3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Subject Phrase Class Elements v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/phrase.ent core/1.0/dtd/
svn del ./publishing/1.0/dtd/phrase.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Subject Phrase Class Elements v1.1 20031101//EN'
svn move ./archiving/1.1/dtd/phrase.ent core/1.1/dtd/
svn del ./publishing/1.1/dtd/phrase.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Subject Phrase Class Elements v2.0 20040830//EN'
svn move ./archiving/2.2/dtd/phrase.ent core/2.0/dtd/
svn del ./archiving/2.0/dtd/phrase.ent
svn del ./archiving/2.1/dtd/phrase.ent
svn del ./authoring/2.1/dtd/phrase.ent
svn del ./books/2.0/dtd/phrase.ent
svn del ./books/2.1/dtd/phrase.ent
svn del ./historical/2.1/dtd/phrase.ent
svn del ./publishing/2.0/dtd/phrase.ent
svn del ./publishing/2.1/dtd/phrase.ent
svn del ./authoring/2.2/dtd/phrase.ent
svn del ./books/2.2/dtd/phrase.ent
svn del ./historical/2.2/dtd/phrase.ent
svn del ./publishing/2.2/dtd/phrase.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Subject Phrase Class Elements v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/phrase.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/phrase.ent
svn del ./authoring/2.3/dtd/phrase.ent
svn del ./books/2.3/dtd/phrase.ent
svn del ./historical/2.3/dtd/phrase.ent
svn del ./publishing-oasis/2.3/dtd/phrase.ent
svn del ./publishing/2.3/dtd/phrase.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite Subject Phrase Class Elements v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/phrase3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/phrase3.ent
svn del ./authoring/3.0/dtd/phrase3.ent
svn del ./books/3.0/dtd/phrase3.ent
svn del ./publishing-oasis/3.0/dtd/phrase3.ent
svn del ./publishing/3.0/dtd/phrase3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite XHTML Table Setup Module v1.0 20021201//EN'
svn move ./archiving/1.0/dtd/XHTMLtablesetup.ent core/1.0/dtd/
svn del ./publishing/1.0/dtd/XHTMLtablesetup.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite XHTML Table Setup Module v1.1 20031101//EN'
svn move ./archiving/1.1/dtd/XHTMLtablesetup.ent core/1.1/dtd/
svn del ./publishing/1.1/dtd/XHTMLtablesetup.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite XHTML Table Setup Module v2.0 20040830//EN'
svn move ./archiving/2.0/dtd/XHTMLtablesetup.ent core/2.0/dtd/
svn del ./books/2.0/dtd/XHTMLtablesetup.ent
svn del ./publishing/2.0/dtd/XHTMLtablesetup.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite XHTML Table Setup Module v2.1 20050630//EN'
svn move ./archiving/2.1/dtd/XHTMLtablesetup.ent core/2.1/dtd/
svn del ./archiving/2.2/dtd/XHTMLtablesetup.ent
svn del ./authoring/2.1/dtd/XHTMLtablesetup.ent
svn del ./authoring/2.2/dtd/XHTMLtablesetup.ent
svn del ./books/2.1/dtd/XHTMLtablesetup.ent
svn del ./books/2.2/dtd/XHTMLtablesetup.ent
svn del ./historical/2.1/dtd/XHTMLtablesetup.ent
svn del ./historical/2.2/dtd/XHTMLtablesetup.ent
svn del ./publishing/2.1/dtd/XHTMLtablesetup.ent
svn del ./publishing/2.2/dtd/XHTMLtablesetup.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite XHTML Table Setup Module v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/XHTMLtablesetup.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/XHTMLtablesetup.ent
svn del ./authoring/2.3/dtd/XHTMLtablesetup.ent
svn del ./books/2.3/dtd/XHTMLtablesetup.ent
svn del ./historical/2.3/dtd/XHTMLtablesetup.ent
svn del ./publishing-oasis/2.3/dtd/XHTMLtablesetup.ent
svn del ./publishing/2.3/dtd/XHTMLtablesetup.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite XHTML Table Setup Module v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/XHTMLtablesetup3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/XHTMLtablesetup3.ent
svn del ./authoring/3.0/dtd/XHTMLtablesetup3.ent
svn del ./books/3.0/dtd/XHTMLtablesetup3.ent
svn del ./publishing-oasis/3.0/dtd/XHTMLtablesetup3.ent
svn del ./publishing/3.0/dtd/XHTMLtablesetup3.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite XML Special Characters Module v2.0 20040830//EN'
svn move ./archiving/2.0/dtd/xmlspecchars.ent core/2.0/dtd/
svn del ./books/2.0/dtd/xmlspecchars.ent
svn del ./publishing/2.0/dtd/xmlspecchars.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite XML Special Characters Module v2.1 20050630//EN'
svn move ./archiving/2.1/dtd/xmlspecchars.ent core/2.1/dtd/
svn del ./archiving/2.2/dtd/xmlspecchars.ent
svn del ./authoring/2.1/dtd/xmlspecchars.ent
svn del ./authoring/2.2/dtd/xmlspecchars.ent
svn del ./books/2.1/dtd/xmlspecchars.ent
svn del ./books/2.2/dtd/xmlspecchars.ent
svn del ./historical/2.1/dtd/xmlspecchars.ent
svn del ./historical/2.2/dtd/xmlspecchars.ent
svn del ./publishing/2.1/dtd/xmlspecchars.ent
svn del ./publishing/2.2/dtd/xmlspecchars.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite XML Special Characters Module v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/xmlspecchars.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/xmlspecchars.ent
svn del ./authoring/2.3/dtd/xmlspecchars.ent
svn del ./books/2.3/dtd/xmlspecchars.ent
svn del ./historical/2.3/dtd/xmlspecchars.ent
svn del ./publishing-oasis/2.3/dtd/xmlspecchars.ent
svn del ./publishing/2.3/dtd/xmlspecchars.ent

echo
echo MoveTo '-//NLM//DTD Archiving and Interchange DTD Suite XML Special Characters Module v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/xmlspecchars3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/xmlspecchars3.ent
svn del ./authoring/3.0/dtd/xmlspecchars3.ent
svn del ./books/3.0/dtd/xmlspecchars3.ent
svn del ./publishing-oasis/3.0/dtd/xmlspecchars3.ent
svn del ./publishing/3.0/dtd/xmlspecchars3.ent

echo
echo MoveTo force '-//NLM//DTD Article Authoring DTD Over-ride Classes Module v2.1 20050630//EN'
svn del ./authoring/2.1/dtd/articleauthcustom-classes.ent
svn move ./authoring/2.2/dtd/articleauthcustom-classes.ent authoring/2.1/dtd/

echo
echo MoveTo force '-//NLM//DTD Article Authoring DTD Over-ride Mixes Module v2.1 20050630//EN'
svn del ./authoring/2.1/dtd/articleauthcustom-mixes.ent
svn move ./authoring/2.2/dtd/articleauthcustom-mixes.ent authoring/2.1/dtd/

echo
echo Remains '-//NLM//DTD Book DTD Module of Modules v2.1 20050630//EN'
svn del ./historical/2.1/dtd/bookcustom-modules.ent

echo
echo Remains '-//NLM//DTD Book DTD Module of Modules v2.2 20061013//EN'
svn del ./historical/2.2/dtd/bookcustom-modules.ent

echo
echo Remains '-//NLM//DTD Book DTD Module of Modules v2.3 20070202//EN'
svn del ./historical/2.3/dtd/bookcustom-modules.ent

echo
echo Remains '-//NLM//DTD Book DTD v2.1 20050630//EN'
svn del ./historical/2.1/dtd/book.dtd

echo
echo Remains '-//NLM//DTD Book DTD v2.2 20061013//EN'
svn del ./historical/2.2/dtd/book.dtd

echo
echo MoveTo '-//NLM//DTD Default Element Classes Module v2.0 20040830//EN'
svn move ./books/2.0/dtd/default-classes.ent core/2.0/dtd/
svn del ./archiving/2.0/dtd/default-classes.ent
svn del ./publishing/2.0/dtd/default-classes.ent

echo
echo MoveTo '-//NLM//DTD Default Element Classes Module v2.1 20050630//EN'
svn move ./archiving/2.1/dtd/default-classes.ent core/2.1/dtd/
svn del ./authoring/2.1/dtd/default-classes.ent
svn del ./books/2.1/dtd/default-classes.ent
svn del ./historical/2.1/dtd/default-classes.ent
svn del ./publishing/2.1/dtd/default-classes.ent

echo
echo MoveTo '-//NLM//DTD Default Element Classes Module v2.2 20060430//EN'
svn move ./archiving/2.2/dtd/default-classes.ent core/2.2/dtd/
svn del ./authoring/2.2/dtd/default-classes.ent
svn del ./books/2.2/dtd/default-classes.ent
svn del ./historical/2.2/dtd/default-classes.ent
svn del ./publishing/2.2/dtd/default-classes.ent

echo
echo MoveTo '-//NLM//DTD Default Element Classes Module v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/default-classes.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/default-classes.ent
svn del ./authoring/2.3/dtd/default-classes.ent
svn del ./books/2.3/dtd/default-classes.ent
svn del ./historical/2.3/dtd/default-classes.ent
svn del ./publishing-oasis/2.3/dtd/default-classes.ent
svn del ./publishing/2.3/dtd/default-classes.ent

echo
echo MoveTo '-//NLM//DTD Default Element Classes Module v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/default-classes3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/default-classes3.ent
svn del ./authoring/3.0/dtd/default-classes3.ent
svn del ./books/3.0/dtd/default-classes3.ent
svn del ./publishing-oasis/3.0/dtd/default-classes3.ent
svn del ./publishing/3.0/dtd/default-classes3.ent

echo
echo MoveTo '-//NLM//DTD Default Element Mixes Module v2.0 20040830//EN'
svn move ./archiving/2.0/dtd/default-mixes.ent core/2.0/dtd/
svn del ./books/2.0/dtd/default-mixes.ent
svn del ./publishing/2.0/dtd/default-mixes.ent

echo
echo MoveTo '-//NLM//DTD Default Element Mixes Module v2.1 20050630//EN'
svn move ./archiving/2.2/dtd/default-mixes.ent core/2.1/dtd/
svn del ./archiving/2.1/dtd/default-mixes.ent
svn del ./authoring/2.1/dtd/default-mixes.ent
svn del ./books/2.1/dtd/default-mixes.ent
svn del ./historical/2.1/dtd/default-mixes.ent
svn del ./publishing/2.1/dtd/default-mixes.ent
svn del ./authoring/2.2/dtd/default-mixes.ent
svn del ./books/2.2/dtd/default-mixes.ent
svn del ./historical/2.2/dtd/default-mixes.ent
svn del ./publishing/2.2/dtd/default-mixes.ent

echo
echo MoveTo '-//NLM//DTD Default Element Mixes Module v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/default-mixes.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/default-mixes.ent
svn del ./authoring/2.3/dtd/default-mixes.ent
svn del ./books/2.3/dtd/default-mixes.ent
svn del ./historical/2.3/dtd/default-mixes.ent
svn del ./publishing-oasis/2.3/dtd/default-mixes.ent
svn del ./publishing/2.3/dtd/default-mixes.ent

echo
echo MoveTo '-//NLM//DTD Default Element Mixes Module v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/default-mixes3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/default-mixes3.ent
svn del ./authoring/3.0/dtd/default-mixes3.ent
svn del ./books/3.0/dtd/default-mixes3.ent
svn del ./publishing-oasis/3.0/dtd/default-mixes3.ent
svn del ./publishing/3.0/dtd/default-mixes3.ent

echo
echo Remains '-//NLM//DTD Journal Archiving DTD Customize Classes Module v2.1 20050630//EN'
svn del ./archiving/2.2/dtd/archivecustom-classes.ent

echo
echo Remains '-//NLM//DTD Journal Archiving DTD Customize Content and Attributes Module v2.3 20070202//EN'
svn del ./archive-oasis/2.3/dtd/archivecustom-models.ent

echo
echo Remains '-//NLM//DTD Journal Archiving DTD Customize Content and Attributes Module v3.0 20080202//EN'
svn del ./archive-oasis/3.0/dtd/archivecustom-models3.ent

echo
echo MoveTo force '-//NLM//DTD Journal Archiving DTD Customize Mixes Module v2.1 20050630//EN'
svn del ./archiving/2.1/dtd/archivecustom-mixes.ent
svn move ./archiving/2.2/dtd/archivecustom-mixes.ent archiving/2.1/dtd/

echo
echo Remains '-//NLM//DTD Journal Archiving DTD Customize Mixes Module v2.3 20070202//EN'
svn del ./archive-oasis/2.3/dtd/archivecustom-mixes.ent

echo
echo MoveTo '-//NLM//DTD Journal Archiving DTD to Test the Base Suite v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/base-test3.dtd core/3.0/dtd/
svn del ./archiving/3.0/dtd/base-test3.dtd
svn del ./authoring/3.0/dtd/base-test3.dtd
svn del ./books/3.0/dtd/base-test3.dtd
svn del ./publishing-oasis/3.0/dtd/base-test3.dtd
svn del ./publishing/3.0/dtd/base-test3.dtd

echo
echo MoveTo '-//NLM//DTD Journal Archiving and Interchange DTD to Test the Base Suite v2.0 20040830//EN'
svn move ./publishing/2.0/dtd/base-test.dtd core/2.0/dtd/

echo
echo Remains '-//NLM//DTD Journal Publishing DTD Customize Classes Module v2.0 20040830//EN'
svn del ./archiving/2.0/dtd/journalpubcustom-classes.ent
svn del ./publishing/2.1/dtd/journalpubcustom-classes.ent
svn del ./publishing/2.2/dtd/journalpubcustom-classes.ent

echo
echo Remains '-//NLM//DTD Journal Publishing DTD Customize Content and Attributes Module v2.3 20070202//EN'
svn del ./publishing-oasis/2.3/dtd/journalpubcustom-models.ent

echo
echo Remains '-//NLM//DTD Journal Publishing DTD Customize Content and Attributes Module v3.0 20080202//EN'
svn del ./publishing-oasis/3.0/dtd/journalpubcustom-models3.ent

echo
echo Remains '-//NLM//DTD Journal Publishing DTD Customize Mixes Module v2.0 20040830//EN'
svn del ./archiving/2.0/dtd/journalpubcustom-mixes.ent
svn del ./publishing/2.1/dtd/journalpubcustom-mixes.ent
svn del ./publishing/2.2/dtd/journalpubcustom-mixes.ent

echo
echo Remains '-//NLM//DTD Journal Publishing DTD Customize Mixes Module v2.3 20070202//EN'
svn del ./publishing-oasis/2.3/dtd/journalpubcustom-mixes.ent

echo
echo Remains '-//NLM//DTD Journal Publishing DTD Customize Mixes Module v3.0 20080202//EN'
svn del ./publishing-oasis/3.0/dtd/journalpubcustom-mixes3.ent

echo
echo Remains '-//NLM//DTD Journal Publishing DTD v2.0 20040830//EN'
svn del ./archiving/2.0/dtd/journalpublishing.dtd

echo
echo Remains '-//NLM//DTD Journal Publishing DTD v2.3 20070202//EN'
svn del ./publishing-oasis/2.3/dtd/journalpublishing.dtd

echo
echo Remains '-//NLM//DTD Journal Publishing DTD-Specific Modules v2.0 20040830//EN'
svn del ./archiving/2.0/dtd/journalpubcustom-modules.ent

echo
echo Remains '-//NLM//DTD NCBI Book Collection DTD v2.1 20050630//EN'
svn del ./historical/2.1/dtd/bookcollection.dtd

echo
echo Remains '-//NLM//DTD NCBI Book Collection DTD v2.2 20061013//EN'
svn del ./historical/2.2/dtd/bookcollection.dtd

echo
echo Remains '-//NLM//DTD NCBI Book DTD Book Component Metadata Elements v2.1 20050630//EN'
svn del ./historical/2.1/dtd/bookpart.ent

echo
echo Remains '-//NLM//DTD NCBI Book DTD Book Component Metadata Elements v2.2 20061013//EN'
svn del ./historical/2.2/dtd/bookpart.ent

echo
echo Remains '-//NLM//DTD NCBI Book DTD Book Component Metadata Elements v2.3 20070202//EN'
svn del ./historical/2.3/dtd/bookpart.ent

echo
echo Remains '-//NLM//DTD NCBI Book DTD Book Metadata Elements v2.1 20050630//EN'
svn del ./historical/2.1/dtd/bookmeta.ent

echo
echo Remains '-//NLM//DTD NCBI Book DTD Book Metadata Elements v2.2 20061013//EN'
svn del ./historical/2.2/dtd/bookmeta.ent

echo
echo Remains '-//NLM//DTD NCBI Book DTD Book Metadata Elements v2.3 20070202//EN'
svn del ./historical/2.3/dtd/bookmeta.ent

echo
echo Remains '-//NLM//DTD NCBI Book DTD Book Related Object Element v2.2 20061013//EN'
svn del ./historical/2.2/dtd/bookrelated-object.ent

echo
echo Remains '-//NLM//DTD NCBI Book DTD Book Related Object Element v2.3 20070202//EN'
svn del ./historical/2.3/dtd/bookrelated-object.ent

echo
echo Remains '-//NLM//DTD NCBI Book DTD Content and Attribute Over-ride Module v2.1 20050630//EN'
svn del ./historical/2.1/dtd/bookcustom-models.ent

echo
echo Remains '-//NLM//DTD NCBI Book DTD Content and Attribute Over-ride Module v2.2 20061013//EN'
svn del ./historical/2.2/dtd/bookcustom-models.ent

echo
echo Remains '-//NLM//DTD NCBI Book DTD Content and Attribute Over-ride Module v2.3 20070202//EN'
svn del ./historical/2.3/dtd/bookcustom-models.ent

echo
echo Remains '-//NLM//DTD NCBI Book DTD Over-ride Classes Module v2.1 20050630//EN'
svn del ./historical/2.1/dtd/bookcustom-classes.ent

echo
echo Remains '-//NLM//DTD NCBI Book DTD Over-ride Classes Module v2.2 20061013//EN'
svn del ./historical/2.2/dtd/bookcustom-classes.ent

echo
echo Remains '-//NLM//DTD NCBI Book DTD Over-ride Classes Module v2.3 20070202//EN'
svn del ./historical/2.3/dtd/bookcustom-classes.ent

echo
echo MoveTo force '-//NLM//DTD NCBI Book DTD Over-ride Mixes Module v2.0 20041031//EN'
svn del ./books/2.0/dtd/bookcustom-mixes.ent
svn move ./books/2.1/dtd/bookcustom-mixes.ent books/2.0/dtd/
svn del ./historical/2.1/dtd/bookcustom-mixes.ent

echo
echo Remains '-//NLM//DTD NCBI Book DTD Over-ride Mixes Module v2.2 20061013//EN'
svn del ./historical/2.2/dtd/bookcustom-mixes.ent

echo
echo Remains '-//NLM//DTD NCBI Book DTD Over-ride Mixes Module v2.3 20070202//EN'
svn del ./historical/2.3/dtd/bookcustom-mixes.ent

echo
echo MoveTo force '-//NLM//DTD NCBI Book Image Map Elements v2.0 20041031//EN'
svn del ./books/2.0/dtd/bookimagemap.ent
svn move ./books/2.1/dtd/bookimagemap.ent books/2.0/dtd/
svn del ./historical/2.1/dtd/bookimagemap.ent

echo
echo Remains '-//NLM//DTD NCBI Book Image Map Elements v2.2 20061013//EN'
svn del ./historical/2.2/dtd/bookimagemap.ent

echo
echo Remains '-//NLM//DTD NCBI Book Image Map Elements v2.3 20070202//EN'
svn del ./historical/2.3/dtd/bookimagemap.ent

echo
echo Remains '-//NLM//DTD NCBI Book Multi-link Elements v2.0 20041031//EN'
svn del ./books/2.0/dtd/bookmultilink.ent
svn del ./historical/2.1/dtd/bookmultilink.ent

echo
echo Remains '-//NLM//DTD NCBI Book Multi-link Elements v2.2 20061013//EN'
svn del ./historical/2.2/dtd/bookmultilink.ent

echo
echo Remains '-//NLM//DTD NCBI Book Multi-link Elements v2.3 20070202//EN'
svn del ./historical/2.3/dtd/bookmultilink.ent

echo
echo MoveTo '-//NLM//DTD NCBI Historical Book DTD Annotation Elements v2.0 20041225//EN'
svn move ./books/2.0/dtd/annotation.ent historical/2.0/dtd/
svn del ./archiving/2.2/dtd/annotation.ent
svn del ./authoring/2.2/dtd/annotation.ent
svn del ./books/2.2/dtd/annotation.ent
svn del ./historical/2.2/dtd/annotation.ent
svn del ./publishing/2.2/dtd/annotation.ent
svn del ./books/2.1/dtd/annotation.ent
svn del ./historical/2.1/dtd/annotation.ent

echo
echo Remains '-//NLM//DTD NCBI Historical Book DTD Annotation Elements v2.3 20070202//EN'
svn del ./archive-oasis/2.3/dtd/annotation.ent
svn del ./archiving/2.3/dtd/annotation.ent
svn del ./authoring/2.3/dtd/annotation.ent
svn del ./books/2.3/dtd/annotation.ent
svn del ./publishing-oasis/2.3/dtd/annotation.ent
svn del ./publishing/2.3/dtd/annotation.ent

echo
echo MoveTo '-//NLM//DTD NCBI Historical Book DTD Annotation Elements v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/annotation3.ent historical/3.0/dtd/
svn del ./archiving/3.0/dtd/annotation3.ent
svn del ./authoring/3.0/dtd/annotation3.ent
svn del ./books/3.0/dtd/annotation3.ent
svn del ./publishing-oasis/3.0/dtd/annotation3.ent
svn del ./publishing/3.0/dtd/annotation3.ent

echo
echo MoveTo '-//NLM//DTD NCBI Historical Book DTD Content and Attribute Over-ride Module v2.0 20041225//EN'
svn move ./books/2.0/dtd/historical-models.ent historical/2.0/dtd/

echo
echo Remains '-//NLM//DTD NCBI Historical Book DTD Content and Attribute Over-ride Module v2.1 20050630//EN'
svn del ./books/2.1/dtd/historical-models.ent
svn del ./books/2.2/dtd/historical-models.ent
svn del ./historical/2.2/dtd/historical-models.ent

echo
echo MoveTo force '-//NLM//DTD NCBI Historical Book DTD Metadata Elements v2.1 20050630//EN'
svn del ./historical/2.1/dtd/historicalmeta.ent
svn move ./books/2.2/dtd/historicalmeta.ent historical/2.1/dtd/
svn del ./books/2.1/dtd/historicalmeta.ent
svn del ./historical/2.2/dtd/historicalmeta.ent

echo
echo Remains '-//NLM//DTD NCBI Historical Book DTD Module of Modules v2.1 20050630//EN'
svn del ./books/2.1/dtd/historical-modules.ent
svn del ./books/2.2/dtd/historical-modules.ent
svn del ./historical/2.2/dtd/historical-modules.ent

echo
echo MoveTo force '-//NLM//DTD NCBI Historical Book DTD Over-ride Classes Module v2.1 20050630//EN'
svn del ./historical/2.1/dtd/historical-classes.ent
svn move ./books/2.2/dtd/historical-classes.ent historical/2.1/dtd/
svn del ./books/2.1/dtd/historical-classes.ent
svn del ./historical/2.2/dtd/historical-classes.ent

echo
echo MoveTo '-//NLM//DTD NCBI Historical Book DTD Over-ride Mixes Module v2.0 20041225//EN'
svn move ./books/2.1/dtd/historical-mixes.ent historical/2.0/dtd/
svn del ./books/2.0/dtd/historical-mixes.ent
svn del ./books/2.2/dtd/historical-mixes.ent
svn del ./historical/2.1/dtd/historical-mixes.ent
svn del ./historical/2.2/dtd/historical-mixes.ent

echo
echo Remains '-//NLM//DTD NCBI Historical Book DTD v2.1 20050630//EN'
svn del ./books/2.1/dtd/historical.dtd

echo
echo Remains '-//NLM//DTD NCBI Historical Book DTD v2.2 20061013//EN'
svn del ./books/2.2/dtd/historical.dtd

echo
echo MoveTo '-//NLM//DTD NLM Citation v2.0 20040830//EN'
svn move ./authoring/2.1/dtd/nlmcitation.ent core/2.0/dtd/
svn del ./archiving/2.0/dtd/nlmcitation.ent
svn del ./archiving/2.2/dtd/nlmcitation.ent
svn del ./authoring/2.2/dtd/nlmcitation.ent
svn del ./books/2.0/dtd/nlmcitation.ent
svn del ./books/2.2/dtd/nlmcitation.ent
svn del ./historical/2.2/dtd/nlmcitation.ent
svn del ./publishing/2.0/dtd/nlmcitation.ent
svn del ./publishing/2.2/dtd/nlmcitation.ent
svn del ./publishing/2.1/dtd/nlmcitation.ent

echo
echo MoveTo '-//NLM//DTD NLM Citation v2.3 20070202//EN'
svn move ./archive-oasis/2.3/dtd/nlmcitation.ent core/2.3/dtd/
svn del ./archiving/2.3/dtd/nlmcitation.ent
svn del ./authoring/2.3/dtd/nlmcitation.ent
svn del ./books/2.3/dtd/nlmcitation.ent
svn del ./historical/2.3/dtd/nlmcitation.ent
svn del ./publishing-oasis/2.3/dtd/nlmcitation.ent
svn del ./publishing/2.3/dtd/nlmcitation.ent

echo
echo MoveTo '-//NLM//DTD NLM Citation v3.0 20080202//EN'
svn move ./archive-oasis/3.0/dtd/nlmcitation3.ent core/3.0/dtd/
svn del ./archiving/3.0/dtd/nlmcitation3.ent
svn del ./authoring/3.0/dtd/nlmcitation3.ent
svn del ./books/3.0/dtd/nlmcitation3.ent
svn del ./publishing-oasis/3.0/dtd/nlmcitation3.ent
svn del ./publishing/3.0/dtd/nlmcitation3.ent

