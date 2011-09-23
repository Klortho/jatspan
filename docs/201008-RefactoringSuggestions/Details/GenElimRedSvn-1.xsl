<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                version="1.0"
                xmlns:regexp="http://exslt.org/regular-expressions"
                extension-element-prefixes="regexp">

  <xsl:output method='text'/>
  
  <xsl:template match='/'>
    <xsl:apply-templates select='//PublicIdGroup'/>
  </xsl:template>

  <xsl:template match='PublicIdGroup'>
    <xsl:variable name='pid' select='string(PublicId)'/>
    <xsl:choose>
      <xsl:when test='MoveTo'>
        <xsl:variable name='from'>
          <xsl:choose>
            <xsl:when test='count(.//Node) = 1'>
              <xsl:value-of select='Node/Path[1]'/>
            </xsl:when>
            <xsl:when test='not(.//Node[@canonical="yes"])'>
              <xsl:text>ERROR!  NO CANONICAL NODE</xsl:text>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select='.//Node[@canonical="yes"]/Path[1]'/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:variable>

        <xsl:choose>
          <xsl:when test='MoveTo/@force and (MoveTo/@force != "")'>
            <xsl:text>echo&#xA;</xsl:text>
            <xsl:text>echo MoveTo force '</xsl:text>
            <xsl:value-of select='$pid'/>
            <xsl:text>'&#xA;</xsl:text>
            <xsl:variable name='forceTo'>
              <xsl:value-of select='concat("./", MoveTo/@dir, MoveTo/@force)'/>
            </xsl:variable>
            <xsl:text>svn del </xsl:text>
            <xsl:value-of select='$forceTo'/>
            <xsl:text>&#xA;</xsl:text>

            <xsl:text>svn move </xsl:text>
            <xsl:value-of select='$from'/>
            <xsl:text> </xsl:text>
            <xsl:value-of select='MoveTo/@dir'/>
            <xsl:text>&#xA;</xsl:text>

            <xsl:for-each select=".//Path[(. != $from) and (. != $forceTo)]">
              <xsl:text>svn del </xsl:text>
              <xsl:value-of select='.'/>
              <xsl:text>&#xA;</xsl:text>
            </xsl:for-each>
          </xsl:when>
          
          <xsl:otherwise>
            <xsl:text>echo&#xA;</xsl:text>
            <xsl:text>echo MoveTo '</xsl:text>
            <xsl:value-of select='$pid'/>
            <xsl:text>'&#xA;</xsl:text>
            <xsl:text>svn move </xsl:text>
            <xsl:value-of select='$from'/>
            <xsl:text> </xsl:text>
            <xsl:value-of select='MoveTo/@dir'/>
            <xsl:text>&#xA;</xsl:text>

            <xsl:for-each select=".//Path[. != $from]">
              <xsl:text>svn del </xsl:text>
              <xsl:value-of select='.'/>
              <xsl:text>&#xA;</xsl:text>
            </xsl:for-each>
          </xsl:otherwise>
        </xsl:choose>
        
        <xsl:text>&#xA;</xsl:text>
      </xsl:when>

      
      <xsl:when test='Remains and (count(.//Path) > 1)'>
        <xsl:text>echo&#xA;</xsl:text>
        <xsl:text>echo Remains '</xsl:text>
        <xsl:value-of select='$pid'/>
        <xsl:text>'&#xA;</xsl:text>
        <xsl:if test='not(.//Path[@canonical="yes"])'>
          <xsl:text>ERROR!  No canonical path&#xA;</xsl:text>
        </xsl:if>
        <xsl:for-each select='.//Path[not(@canonical)]'>
          <xsl:text>svn del </xsl:text>
          <xsl:value-of select='.'/>
          <xsl:text>&#xA;</xsl:text>
        </xsl:for-each>

        <xsl:text>&#xA;</xsl:text>
      </xsl:when>
      
      <xsl:otherwise>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match='NoPidNodes'/>
  <xsl:template match='node()'/>
</xsl:stylesheet>
