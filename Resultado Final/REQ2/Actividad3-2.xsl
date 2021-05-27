<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <instituto>
            <xsl:attribute name="nombre_comercial">
                <xsl:value-of select="ite/@nombre" />
            </xsl:attribute>
            <xsl:attribute name="denominacion_social">
                <xsl:value-of select="//empresa" />
            </xsl:attribute>
            <empleados>
                <xsl:for-each select="//profesor | //director | // jefe_estudios">
                    <empleado>
                        <xsl:attribute name="id">
                            <xsl:value-of select="id" />
                        </xsl:attribute>
                        <xsl:value-of select="nombre" />
                    </empleado>
                </xsl:for-each>
            </empleados>
            <xsl:for-each select="//ciclos/ciclo">
                <ciclo_formativo>
                    <xsl:attribute name="año_publicacion">
                        <xsl:value-of select="decretoTitulo/@año" />
                    </xsl:attribute>
                    <xsl:attribute name="categoria">
                        <xsl:value-of select="grado" />
                    </xsl:attribute>
                    <nombre>
                        <xsl:value-of select="nombre" />
                    </nombre>
                    <acronimo>
                        <xsl:value-of select="@id" />
                    </acronimo>
                </ciclo_formativo>
            </xsl:for-each>
            <informacion_contacto>
                <telefono>
                    <xsl:value-of select="ite/telefono" />
                </telefono>
                <web>
                    <xsl:value-of select="ite/@web" />
                </web>
            </informacion_contacto>
        </instituto>
    </xsl:template>
</xsl:stylesheet>
