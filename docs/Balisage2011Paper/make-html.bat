rem $Id$

xsltproc --novalid ^
  --stringparam css-file style/style.css ^
  style/balisage-proceedings-html.xsl JATSPackPaper.xml ^
  > JATSPackPaper.html
