<?xml version="1.0" encoding="UTF-8"?>

<!--
  This is a throw-away stylesheet that takes as input the JatsReport.xml file
  (in particular, JatsReport-rev77.xml), that looks something like this:
    <JatsReport>
      <PublicIds total="290">
        <PublicIdGroup>
          <PublicId>-//NLM//DTD Archiving and Interchange DTD Suite Back Matter Elements v1.0 20021201//EN</PublicId>
          <Node>
            <Path>./core/1.0/dtd/backmatter.ent</Path>
          </Node>
        </PublicIdGroup>
        ...
      </>
    </>
  The JATS tree has been munged to the point where there is only one <Path> for every
  <PublidIdGroup>.  This stylesheet splits the <Path> into <Dir> and <Filename>, so
  that the output is them same, except:
    ...
      <PublicIdGroup>
        <PublicId>-//NLM//DTD Archiving and Interchange DTD Suite Back Matter Elements v1.0 20021201//EN</PublicId>
        <Node>
          <Path><Dir>./core/1.0/dtd/</Dir><Filename>backmatter.ent</Filename></Path>
        </Node>
      </PublicIdGroup>
    ...
  
  That is used as input to the stylesheet MakeCatalogs2.xsl.
  See MakeCatalogs-intermediate.xml
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:key name='pidByDir' 
           match='PublicId'
    use='substring(., 1, 
           string-length(.) - 
           string-length(
             substring-after(
               substring-after(
                 substring-after(
                   substring-after(., "/"), 
                   "/"), 
                 "/"), 
               "/")
           )
         )'/>
  
  <xsl:template match='Path'>
    <xsl:variable name='filename'
      select='substring-after(
                substring-after(
                  substring-after(
                    substring-after(., "/"),  
                    "/"), 
                  "/"), 
                "/")'/>
    <xsl:variable name='dirLength'
      select='string-length(.) - string-length($filename)'/>
    <xsl:variable name='dir' 
      select='substring(., 1, $dirLength)'/>

    <Path>
      <Dir>
        <xsl:value-of select='$dir'/> 
      </Dir>
      <Filename>
        <xsl:value-of select='$filename'/>
      </Filename>
    </Path>
  </xsl:template>
  
  <xsl:template match='NoPidNodes'/>
  
  <xsl:template match='@*|node()'>
    <xsl:copy>
      <xsl:apply-templates select='@*|node()'/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
