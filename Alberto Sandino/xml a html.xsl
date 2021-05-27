<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
   <xsl:template match="/">
       <html>
            <head> 
            <title><xsl:apply-templates select="ite nombre"/></title> 
            <a href="https://institutotecnologico.edix.com">Visita <b>nuestra página.</b></a>
            </head>
            <body>
               <h1><xsl:value-of select="profesores"/></h1>
                <table border="1">
                        <tr>
       <xsl:apply-templates select="/profesores/profesor"/>
                        </tr>
                                    <tr>
       <xsl:apply-templates select="/profesores/id"/>
                        </tr>
                     </table>

               <h1><xsl:value-of select="ciclos"/></h1>
                <table border="1">
                        <th>
       <xsl:apply-templates select="/ciclos/ciclo id"/>
                        </th>
                        <tr>
       <xsl:apply-templates select="/ciclos/ciclo id/nombre"/>
                        </tr>
                        <tr>
       <xsl:apply-templates select="/ciclos/ciclo id/grado"/>
                        </tr>
                        <tr>
       <xsl:apply-templates select="/ciclos/ciclo id/decretoTitulo año"/>
                        </tr>                       
                     </table>
            <xsl:apply-templates select="director"/>
            <ul>
              <li> <xsl:apply-templates select="/director/nombre"/> </li>
              <li> <xsl:apply-templates select="/director/despacho"/> </li>
           </ul>
            <xsl:apply-templates select="jefe_estudios"/>
            <ul>
              <li> <xsl:apply-templates select="/jefe_estudios/nombre"/> </li>
              <li> <xsl:apply-templates select="/jefe_estudios/despacho"/> </li>
           </ul>

            <form action="datos.jsp"  method="post">
      <table>
        <tr><td>Contactar por email:</td><td><input type="text" name="email" value="ejemplo@mail.com"></input></td></tr>
        <tr><td>Aporta tu teléfono y te llamaremos:</td><td><input type="text" name="name" value="tu número"/></td></tr>
      </table>
    </form>
            </body>
            <footer>
             <a href="https://www.instagram.com/edixeducacion/">Síguenos en Instagram</a>
            </footer>
       </html>
   </xsl:template>
</xsl:stylesheet>
