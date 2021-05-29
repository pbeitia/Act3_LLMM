<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
        <instituto>
            <info_instituto>
                <<xsl:value-of select="ite/@nombre"/>
                <xsl:value-of select="ite_telefono"/>
                <xsl:value-of select="ite/@web"/>
                <xsl:attribute name="domicilio_social">
                    <xsl:value-of select="ite/director/despacho"/>
                </xsl:attribute>

                <xsl:attribute name="numero_movil">
                    <xsl:value-of select="telefono"/>
                </xsl:attribute>
            </info_instituto>

            <trabajadores>
                <xsl:for-each select="ite/profesores/profesor | ite/director | ite/jefe_estudios">
                <trabajador>
                    <xsl:value-of select="id"/>
                    <xsl:value-of select="name"/>
                </trabajador>
                </xsl:for-each>
            </trabajadores>

            <modulos>
                <modulo>
                    <xsl:for-each select="ite/ciclos/ciclo">
                        <xsl:attribute name="año_decreto">
                            <xsl:value-of select="decretoTtulo/@anio"/>
                        </xsl:attribute>

                        <xsl:value-of select="nombre"/>

                        <xsl:attribute name="tipo_formacion">
                            <xsl:value-of select="grado"/>
                        </xsl:attribute>
                    </xsl:for-each>
                </modulo>
            </modulos>  
        </instituto>
    </xsl:template>
</xsl:stylesheet>