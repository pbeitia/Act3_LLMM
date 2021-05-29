<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">

        <html>
            <head>
                <title>Instituto Tecnológico Edix</title>
                <link rel="stylesheet" href="css/estilo.css"/>
            </head>

            <body>
 

<!--Enlace -->
                <div class="enlace">
                    <p>los alumnos usan el campus para estudiar, puedes acceder al campus a traves de este enlace: <a href="https://institutotecnologico.edix.com/group/campus/home">Campus</a></p>
                </div>
<!--tablas -->
                <div id="tablas">
                    
                   
                    <div id="tabla1">
                        <table border="1">
                            <tr>
                                <th>ID</th>
                                <th>Nombre</th>
                                <th>Grado</th>
                                <th>decretoTitulo</th>
                            </tr>
                            <xsl:for-each select="ite/ciclos/ciclo">
                                <tr>
                                    <td> <xsl:value-of select="@id"/> </td>
                                    <td> <xsl:value-of select="nombre"/> </td>
                                    <td> <xsl:value-of select="grado"/></td>
                                    <td> <xsl:value-of select="decretoTitulo/@año"/> </td>
                                </tr>
                            </xsl:for-each>
                        </table>
                    </div>
                    
                    <br/>
                    <br/>
 
                    <div id="tabla2">
                        <table  border="1">
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
                    </div>

                </div>
<!--formulario de contacto -->                
                <div class="contacto">
                    <a id="contacto">CONTACTO</a>
                    
                    
                    <form style="text-align:left; margin-left:120px; margin-top:20px;">
                        <label for="nombre" class="colocar_nombre">Nombre: </label>
                            <input type="text" name="nombre" id="nombre" required="obligatorio" placeholder="Nombre"/>
                      
                        <p>
                          <label for="email" class="email">Email: </label>
                            <input type="email" name="email" id="email" required="obligatorio" placeholder="Email"/>
                        </p>
                    
                        <p>
                          <label for="telefone" class="colocar_telefono">Teléfono: </label>
                            <input type="tel" name="telefono" id="telefono" placeholder="Teléfono"/>
                        </p>    
                      
                        <p>
                          <label for="asunto" class="asunto">Asunto: </label>
                            <input type="text" name="asunto" id="asunto" required="obligatorio" placeholder="Asunto"/>
                        </p>            
                        
                       
                        
                        <button type="submit" name="enviar_formulario" id="enviar"><p>Enviar</p></button>
                    </form>

                    <p>Para contacto directo con secretaria dejamos un numerode telefono:</p>
                    <a style="color:rgb(0, 0, 0); background-color: aliceblue; padding:6px; border-radius:5px;" href="tel:+34 921468477"><xsl:value-of select="ite/telefono"/></a>
                    
                </div>
                
                
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>