<?xml version="1.0" encoding="utf-8"?>


<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:docbook="http://docbook.org/ns/docbook"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="1.0">

  <xsl:import href="/usr/share/xml/docbook/stylesheet/docbook-xsl-ns/fo/docbook.xsl"/>
  <xsl:param name="header.rule" select="0" />
  <xsl:param name="footer.rule" select="0" />
  <xsl:param name="body.font.master" select="12" />
  <xsl:param name="body.font.family" select="'Times New Roman'" />
  <xsl:param name="title.font.family" select="'Times New Roman'" />
  <xsl:param name="generate.toc" select="'article nop'" />
  <xsl:param name="page.height" select="'11in'" />
  <xsl:param name="page.width" select="'8.5in'" />
  <xsl:param name="page.margin.top" select="'1in'" />
  <xsl:param name="page.margin.bottom" select="'1in'" />
  <xsl:param name="page.margin.inner" select="'1in'" />
  <xsl:param name="body.margin.top" select="'0pt'" />
  <xsl:param name="body.margin.bottom" select="'30pt'" />
  <xsl:param name="body.start.indent" select="'0pt'" />
  <xsl:template name="header.content"/>
  <xsl:template match="docbook:comment|docbook:remark">
    <xsl:if test="$show.comments != 0">
      <fo:inline font-style="italic" color="red">
        <xsl:call-template name="inline.charseq"/>
      </fo:inline>
    </xsl:if>
  </xsl:template>
  <xsl:template match="docbook:authorinitials">
    <xsl:if test="$show.comments != 0">
      <fo:inline font-style="italic" color="green">
        <xsl:call-template name="inline.charseq"/>
      </fo:inline>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
