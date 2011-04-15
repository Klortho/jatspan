rem $Id$

xsltproc --novalid ^
  --stringparam css-file balisage-1-2-xsl/balisage-proceedings.css ^
  balisage-1-2-xsl/balisage-proceedings-html.xsl Bal2011malo0713.xml ^
  > Bal2011malo0713.html
