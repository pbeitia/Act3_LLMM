<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <xsl:for-each select="ite nombre/empresa[@type='empresa']">
          <director>
            <xsl:attribute nombredirectora="nombredirectora">
                <xsl:value-of select="@nombre"/>
            </xsl:attribute>
            <xsl:attribute despachodirectora="despachodirectora">
                <xsl:value-of select="@despacho"/>
            </xsl:attribute>
          </director>
        </xsl:for-each>
      </portfolio>
    </xsl:template>
</xsl:stylesheet>
