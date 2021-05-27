<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		
		<html>
            <head>		
                <title>ITE</title>
                <link rel="stylesheet" href="Edix_CSS.css" />
            </head>
            <body>

                <h1>Nombre:<xsl:value-of select="ite/@nombre"/></h1>
                
                <p>Empresa: <xsl:value-of select="ite/empresa"/></p>
                <p>Teléfono: <a type="tel"><xsl:value-of select="ite/telefono"/></a></p>
                <br />

                <table>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                    </tr>
                    <xsl:for-each select="ite/profesores/profesor">
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="nombre"/></td>

                        </tr>
                    </xsl:for-each>
                </table>

                <xsl:for-each select="ite/director">
                    <p>			
                        ID: <xsl:value-of select="nombre"/>
                    </p>
                    <p>			
                        Nombre: <xsl:value-of select="depacho"/>
                        <br/>
                    </p>
                </xsl:for-each>

                <xsl:for-each select="ite/jefe_estudios">
                    <p>			
                        ID: <xsl:value-of select="nombre"/>
                    </p>
                    <p>			
                        Nombre: <xsl:value-of select="depacho"/>
                        <br/>
                    </p>
                </xsl:for-each>

                <br/>

                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Grado</th>
                        <th>decretoTitulo</th>
                    </tr>
                    <xsl:for-each select="ite/ciclos/ciclo">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td class="tabla_ancho"><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="grado"/></td>
                            <td><xsl:value-of select="decretoTitulo"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
            </body>
        </html>
		
	</xsl:template>
</xsl:stylesheet>