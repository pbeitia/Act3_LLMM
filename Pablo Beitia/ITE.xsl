<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">

        <html>
            <head>
                <title>Instituto Tecnológico Edix</title>
                <link rel="stylesheet" href="css/estilo.css"/>
            </head>

            <body>
                <ul id="barra-fija">
                    <li id="titulo"> <a class="titulo-escrito"> <xsl:value-of select="ite/empresa"/> </a> </li>
                </ul>
                <img id="imageninicial" src="img/estudiantes-2031303.jpg"/>

                

                <div class="introduccion">
                    <p>Bienvenidos a la web del Grupo PROEDUCA, líder en educación en línea en España. Tiene como objetivo proporcionar la mejor oferta de educación superior en línea a sus estudiantes. Asume sus compromisos educativos en tres universidades: la Universidad Internacional de La Rioja (UNIR), la Universidad en Internet de México (UNIR México) y CUNIMAD. Asimismo, hace lo propio en la Escuela de Postgrado Neumann, situada en Perú, y en EEUU, donde tiene presencia a través de Marconi International University.</p>

                    <p>Gracias a su modelo en línea, PROEDUCA cuenta con alumnos en más de 90 países, principalmente en España, Ecuador, Colombia, México, Perú, Argentina, Bolivia y EEUU. Es una compañía en constante evolución, buscando la mejora continua y la aplicación de tecnologías innovadoras en la educación.</p>

                    <p>Puedes acccerder al campus a través del siguiente enlace: <a href="https://institutotecnologico.edix.com/group/campus/home">Campus</a></p>
                </div>
                
                <div id="tablas">
                    <h3>Podemos encontrar diferentes módulos de estudio:</h3>
                    <div id="tablaModulos">
                        
                        <table border="1">
                            <tr>
                                <th>Ciclo</th>
                                <th>Nombre</th>
                                <th>Tipo de Grado</th>
                                <th>Decreto del título</th>
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
                
                    <div class="profesores">
                        <p>Dentro de los módulos podemos encontrar diferentes profesores, todo ellos estarán dispuestos a ayudarte en todo lo que sea posible.</p>
                        <p>Además nuestro centro de educación cuenta con una directora especializada y un jefe de estudios.</p>
                    </div>
                    <div id= "tablaylista">
                        <div id="tablaTrabajadores">
                            <table border="1">
                                <tr>
                                    <th>Identificador</th>
                                    <th>Nombre</th>
                                </tr>
            
                                <xsl:for-each select="ite/profesores/profesor">
                                    <tr>
                                        <td> <xsl:value-of select="id"/> </td>
                                        <td> <xsl:value-of select="nombre"/> </td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                        </div>
                    </div>
                </div>

                <div class="contacto">
                    <a id="contacto">CONTACTO</a>
                    <p>En caso de que quiera contactar con nosotros, puede rellenar el siguiente formulario o puede solicitar una entrevista en el siguiente número de teléfono con el jefe de estudios o la directora.</p>
                    <a style="color:rgb(0, 81, 255); background-color: aliceblue; padding:5px; border-radius:5px;" href="tel:+34 917873991"><xsl:value-of select="ite/telefono"/></a>
                    
                    <xsl:for-each select="ite">
                    <ul style="text-align:left; margin-left:100px;">
                        <li><xsl:value-of select="director/nombre"/> se encuentra en el despacho <xsl:value-of select="director/despacho"/></li>
                        <li><xsl:value-of select="jefe_estudios/nombre"/> se encuentra en el despacho <xsl:value-of select="jefe_estudios/despacho"/></li>
                    </ul>
                    </xsl:for-each>
                    
                    <form style="text-align:left; margin-left:120px; margin-top:20px;">
                        <label for="nombre" class="colocar_nombre">Nombre: </label>
                            <input type="text" name="nombre" id="nombre" required="obligatorio" placeholder="Escribe tu nombre"/>
                        
                      
                        <p>
                          <label for="email" class="email">Email: </label>
                            <input type="email" name="email" id="email" required="obligatorio" placeholder="Escribe tu Email"/>
                        </p>
                    
                        <p>
                          <label for="telefone" class="colocar_telefono">Teléfono: </label>
                            <input type="tel" name="telefono" id="telefono" placeholder="Escribe tu teléfono"/>
                        </p>    
                      
                        <p>
                          <label for="asunto" class="asunto">Asunto: </label>
                            <input type="text" name="asunto" id="assunto" required="obligatorio" placeholder="Escribe un asunto"/>
                        </p>            
                      
                        <button type="submit" name="enviar_formulario" id="enviar"><p>Enviar</p></button>
                    </form>

                    <img id="logo" src="img/company_logo.png"></img>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>