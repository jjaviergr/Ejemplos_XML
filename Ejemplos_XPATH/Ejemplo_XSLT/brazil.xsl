<?xml version="1.0" encoding="iso-8859-15"?>
<!-- Definición del Espacio de nombres y versión XSL -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:preserve-space elements="*"/>
    <!-- Se aplican las transformaciones desde el nodo raíz -->
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <!-- Mostrar el contenido de un nodo -->
                    <xsl:value-of select="/pelicula/text()"/>
                </title>
            </head>
            <body>
                <h3> Consultas XPath sobre una consulta XSLT </h3>
                <p>
                    <xsl:text> Nodo raíz: </xsl:text>
                    <xsl:value-of select="/"/>
                </p>
                <p>
                    <xsl:text> Eslogan: </xsl:text>
                    <xsl:value-of select="/pelicula/esloganes/eslogan"/>
                </p>
                <p>
                    <xsl:text> Nombre primer Actor: </xsl:text>
                    <xsl:value-of select="/pelicula/reparto/interprete/@nombre"/>
                </p>
                <p>
                    <xsl:text> Instrucciones de proceso: </xsl:text>
                    <xsl:value-of select="processing-instruction()"/>
                </p>
                <p>
                    <xsl:text> Comentario de Eslogan: </xsl:text>
                    <xsl:value-of select="/pelicula/esloganes/comment()"/>
                </p>
                <p>
                    <xsl:text> Número de intérpretes: </xsl:text>
                    <xsl:value-of select="count(/pelicula/reparto/interprete)"/>
                </p>
                <p>
                    <xsl:text> Número de guionistas: </xsl:text>
                    <xsl:value-of select="count(/pelicula/guion/guionista)"/>
                </p>
                <p>
                    <xsl:text> Unir cadenas, seleccionar los apellidos y nombre: </xsl:text>
                    <xsl:for-each select="/pelicula/reparto/interprete">
                        <xsl:value-of select="concat(@apellidos,', ',@nombre)"/>
                        <xsl:text>. </xsl:text>
                    </xsl:for-each>
                </p>
                <p>
                    <xsl:text> Obtener la suma de la valoracion de los interpretes: </xsl:text>
                    <xsl:value-of select="sum(/pelicula/reparto/interprete/@valoracion)"/>
                </p>
                <xsl:variable name="total" select="count(/pelicula/reparto/interprete)" />
                <p>
                    <xsl:text> Total de interpretes: </xsl:text>
                    <xsl:value-of select="$total"/>
                </p>
                <p>
                    <xsl:text> Media de valoración de intérpretes: </xsl:text>
                    <xsl:value-of select="sum(/pelicula/reparto/interprete/@valoracion) div
count(/pelicula/reparto/interprete)" />
                </p>
                <xsl:variable name="media" select="sum(/pelicula/reparto/interprete/@valoracion) div $total" />
                <!-- para multiplar *, suma +, resta -, división div, resto mod -->
                <p>
                    <xsl:text> Mostrar el valor de la variable media: </xsl:text>
                    <xsl:value-of select="$media"/>
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
