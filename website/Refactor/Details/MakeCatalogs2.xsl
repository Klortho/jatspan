<?xml version="1.0" encoding="UTF-8"?>
<!-- 
  This stylesheet makes a bunch of separate "catalog" blocks, which are intended
  to be cut-and-pasted into catalog.xml files, one for each tag set / version.
  It took as input MakeCatalogs-intermediate.xml, which was produced by
  MakeCatalogs1.xsl.
  The output of this was MakeCatalogs-product.xml.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:output method="xml" indent="yes"/>
  
  <xsl:key name='pidByDir'
    match='PublicIdGroup'
    use='Node/Path/Dir'/>
  
  <xsl:template match='/'>
    <xsl:for-each select='//PublicIdGroup[count(. | key("pidByDir", Node/Path/Dir)[1]) = 1]'>
      <xsl:sort select='Node/Path/Dir'/>
      
      <xsl:variable name='dir' select='Node/Path/Dir'/>
      <!-- Only interested in directories that end in '/dtd/' -->
      <xsl:variable name='dirLen' select='string-length($dir)'/>

      <xsl:if test='substring($dir, $dirLen - 4) = "/dtd/"'>
        <Group dir='{$dir}'>
          <!--<DirEnd><xsl:value-of select='substring($dir, $dirLen - 4)'/></DirEnd>-->
          <xsl:for-each select='key("pidByDir", $dir)'>
            <xsl:sort select='Node/Path/Filename'/>
            <xsl:variable name='pid' select='PublicId'/>
            <xsl:variable name='filename' select='Node/Path/Filename'/>

            <public publicId="{$pid}" 
              uri='{concat("dtd/", $filename)}'/>
            
          </xsl:for-each>
        </Group>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
