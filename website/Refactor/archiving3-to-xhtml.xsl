<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                version="1.0"
                xmlns='http://www.w3.org/1999/xhtml'
                xmlns:xlink='http://www.w3.org/1999/xlink'>

  <xsl:template match='/'>
    <xsl:apply-templates select='article'/>
  </xsl:template>
  
  <xsl:template match='article'>
    <xsl:variable name='article-title'>
      <xsl:apply-templates select='front/article-meta/title-group/article-title/node()'/>
    </xsl:variable>
    <html>
      <head>
        <title>
          <xsl:value-of select="$article-title"/>
        </title>
        <link rel='stylesheet' href="article.css"/>
      </head>
      <body>
        <h1><xsl:copy-of select="$article-title"/></h1>
        <xsl:apply-templates select='front'/>
        <div class='sec toc'>
          <h2>Contents</h2>
          <ul>
            <xsl:apply-templates select='body/sec' mode='toc'/>
          </ul>
          <ul>
            <xsl:apply-templates select='back/ref-list | back/app-group/app' mode='toc'/>
          </ul>
        </div>
        <xsl:apply-templates select='body | back'/>
      </body>
    </html>
  </xsl:template>

<!--+========================================================================
    | TOC
    +-->
  <xsl:template match='sec' mode='toc'>
    <li>
      <a href='#{@id}'>
        <xsl:apply-templates select='title'/>
      </a>
      <xsl:if test='sec'>
        <ul>
          <xsl:apply-templates select='sec' mode='toc'/>
        </ul>
      </xsl:if>
    </li>
  </xsl:template>

  <xsl:template match='ref-list' mode='toc'>
    <li>
      <a href='#{@id}'>
        <xsl:apply-templates select='title'/>
      </a>
    </li>
  </xsl:template>

  <xsl:template match='app' mode='toc'>
    <li>
      <a href='#{@id}'>
        <xsl:apply-templates select='title'/>
      </a>
    </li>
  </xsl:template>
  
<!--+========================================================================
    | Front matter
    +-->
  
  <!-- We can throw the article title away because we've already dispatched it. -->
  <xsl:template match='front/article-meta/title-group/article-title'/>

  <xsl:template match='front'>
    <div class='front'>
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  <xsl:template match='contrib-group'>
    <xsl:for-each select='contrib[@contrib-type="author"]'>
      <p>
        <b>Author: </b> 
        <xsl:apply-templates/>
      </p>
    </xsl:for-each>
  </xsl:template>
  
  <xsl:template match='name'>
    <xsl:apply-templates select='given-names'/>
    <xsl:text> </xsl:text>
    <xsl:apply-templates select='surname'/>
  </xsl:template>
  
  <xsl:template match='pub-date'>
    <p>
      <b>Date:  </b>
      <xsl:value-of select='year'/>
      <xsl:text>-</xsl:text>
      <xsl:value-of select='month'/>
      <xsl:text>-</xsl:text>
      <xsl:value-of select='day'/>
    </p>
  </xsl:template>
  
<!--+=====================================================
    | body | back
    +-->
  <xsl:template match='body'>
    <xsl:apply-templates>
      <xsl:with-param name='level' select='"1"'/>
    </xsl:apply-templates>
  </xsl:template>

  <xsl:template match='back'>
    <hr />
    <xsl:apply-templates>
      <xsl:with-param name='level' select='"1"'/>
    </xsl:apply-templates>
  </xsl:template>
  
  <xsl:template match='app-group'>
    <xsl:param name='level'/>
    <xsl:apply-templates>
      <xsl:with-param name='level' select='$level'/>
    </xsl:apply-templates>
  </xsl:template>
  
  
  <xsl:template match='sec'>
    <xsl:param name='level'/>
    <div class='sec' id='{@id}'>
      <xsl:apply-templates>
        <xsl:with-param name='level' select='$level + 1'/>
      </xsl:apply-templates>
    </div>
  </xsl:template>

  <xsl:template match='ref-list | app'>
    <xsl:param name='level'/>
    <div class='sec' id='{@id}'>
      <xsl:apply-templates>
        <xsl:with-param name='level' select='$level + 1'/>
      </xsl:apply-templates>
    </div>
  </xsl:template>

  <!-- When transforming the body, drop the titles -->
  <xsl:template match='title'>
    <xsl:param name='level'/>
    <xsl:element name='h{$level}'>
      <xsl:apply-templates/>
    </xsl:element>
  </xsl:template> 

  <xsl:template match='p'>
    <p>
      <xsl:apply-templates select='@id|node()'/>
    </p>
  </xsl:template>
  
  <xsl:template match='list'>
    <xsl:choose>
      <xsl:when test='@list-type = "order"'>
        <ol>
          <xsl:apply-templates select='@id|node()'/>
        </ol>
      </xsl:when>
      <xsl:otherwise>
        <ul>
          <xsl:apply-templates select='@id|node()'/>
        </ul>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match='list-item'>
    <li>
      <xsl:apply-templates select='@id|node()'/>
    </li>
  </xsl:template>
  
  <xsl:template match='preformat'>
    <pre>
      <xsl:apply-templates select='@id|node()'/>
    </pre>
  </xsl:template>
  
  <xsl:template match='disp-quote'>
    <blockquote>
      <xsl:apply-templates select='@id|node()'/>
    </blockquote>
  </xsl:template>
  
  <xsl:template match='ref'>
    <div class='ref' id='{@id}'>
      <xsl:value-of select='@id'/>.
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  <xsl:template match='mixed-citation'>
    <a href='{@xlink:href}'>
      <xsl:apply-templates/>
    </a>
  </xsl:template>

<!--+================================================================
    | Inline styles
    +-->
  
  <xsl:template match='bold'>
    <b><xsl:apply-templates/></b>
  </xsl:template>

  <xsl:template match='italic'>
    <i><xsl:apply-templates/></i>
  </xsl:template>

  <xsl:template match='ext-link'>
    <a href='{@xlink:href}'>
      <xsl:apply-templates/>
    </a>
  </xsl:template>
  
  <xsl:template match='xref'>
    <a href='#{@rid}'>
      <xsl:apply-templates/>
    </a>
  </xsl:template>

<!--+================================================================
    | Default templates
    +-->
  <xsl:template match='@id'>
    <xsl:copy/>
  </xsl:template>
    
</xsl:stylesheet>
