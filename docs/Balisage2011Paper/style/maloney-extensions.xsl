<?xml version='1.0'?>
<!-- $Id$ -->
<!-- Just a random enhancement to the Balisage XSLT. -->

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:d="http://docbook.org/ns/docbook"
                exclude-result-prefixes="d">

  <!--
    This lets me put the Subversion Id keyword for the document into a
    tag <svn-keyword>, and have it come out into the viewable output.
  -->
  <xsl:template match='d:svn-keyword'>
  <!--
    <xsl:value-of
      select='.'/>
  -->
    <xsl:value-of
      select='normalize-space(
                substring-before(
                  substring-after(
                    substring-after(., "$"), ":"), "$"))'/>
  </xsl:template>
</xsl:stylesheet>