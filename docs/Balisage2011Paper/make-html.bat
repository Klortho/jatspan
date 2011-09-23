rem $Id$

xsltproc --novalid ^
  --stringparam css-file style/style.css ^
  style/balisage-proceedings-html.xsl Bal2011malo0713.xml ^
  > JATSPackPaper.html
