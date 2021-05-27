<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Instituto Teconlogico EDIX</title>
                <link rel="stylesheet" href="Actividad3.css" />
            </head>
            <body>
                <header>
                    <a href="{ite/@web}">
                        <img src="logo_edix.jpg"></img>
                    </a>
                </header>
                <nav>
                    <ul>
                        <li>
                            <a class="active">Sobre Nosotros</a>
                        </li>
                        <li>
                            <a href="https://www.edix.com/es/carreras/">Cursos Académicos</a>
                        </li>
                    </ul>
                </nav>
                <section>
                    <h1>ASIGNATURAS</h1>
                    <ul >
                        <xsl:for-each select="//ciclos/ciclo">
                            <li class="asignaturas">
                                <xsl:value-of select="nombre" />
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>
                <section>
                    <h1>CLAUSTRO DE PROFESORES</h1>
                    <table class="tablaprofesores">
                        <caption>Profesores</caption>
                        <tbody>
                            <xsl:for-each select="//profesor">
                                <xsl:sort select="nombre"/>
                                <tr>
                                    <td>
                                        <xsl:value-of select="nombre"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                    <table >
                        <caption>Directivo</caption>
                        <thead>
                            <tr>
                                <th>Puesto</th>
                                <th>Nombre</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="/ite">
                                <tr>
                                    <td>Directora</td>
                                    <td>
                                        <xsl:value-of select="//director/nombre" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Jefe de estudios</td>
                                    <td>
                                        <xsl:value-of select="//jefe_estudios/nombre" />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </section>
                <form method="post">
                    <fieldset>
                        <h5>Solicite información</h5>
                        <input id="nombre" type="text" name="nombre" placeholder="Nombre"></input>
                        <input id="nombre" type="text" name="nombre" placeholder="Primer Apellido"></input>
                        <input id="nombre" type="text" name="nombre" placeholder="Segundo Apellido"></input>
                        <input id="email" type="email" name="email" placeholder="Email"></input>
                        <input id="telefono" type="tel" name="telefono" placeholder="Telefono"></input>
                        <input id="edad" type="number" min="16" max="99" name="edad" placeholder="edad"></input>
                        <input id="provincia" type="text" name="provincia" placeholder="provincia"></input>
                        <input id="pais" type="text" name="pais" placeholder="pais"></input>
                        <label for="grado">¿Sobre que grado desea información?</label>
                        <select id="grado" name="grado">
                            <xsl:for-each select="//ciclos/ciclo">
                                <option>
                                    <xsl:value-of select="@id"/>
                                </option>
                            </xsl:for-each>
                        </select>
                        <label for="mensaje">Mensaje</label>
                        <textarea style="resize:none" rows="11" cols="53" name="mensaje"></textarea>
                        <label class="terminos" for="terminos">Acepta los términos de uso?</label>
                        <input id="terminos" type="checkbox" name="terminos" value="Y"></input>
                        <input type="submit" value="Enviar"></input>
                        <input type="reset" value="limpiar"></input>
                    </fieldset>
                </form>
                <footer>
                    <p>
                        <xsl:value-of select="/ite/empresa"/>
                    </p>
                    <p>
                        Tel:<xsl:value-of select="/ite/telefono"/>
                    </p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>