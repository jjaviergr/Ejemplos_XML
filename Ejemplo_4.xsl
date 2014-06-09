<?xml version="1.0" encoding="iso-8859-15"?>
<!-- Definición del Espacio de nombres y versión XSL -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:preserve-space elements="*"/>
    <!-- Se aplican las transformaciones desde el nodo raíz -->
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <!-- título de la película como título de la página -->
                    <xsl:value-of select="/pelicula/@titulo"/>
                </title>
            </head>
            <body>
                <!-- Mostrar el nombre y apellidos cada interprete de la película -->
                <h3> Intérpretes </h3>
                <p> 
                    <xsl:value-of select="/pelicula/reparto/interprete[1]/@nombre"/>
                    <!-- mostrar un espacio en blanco -->
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="/pelicula/reparto/interprete[1]/@apellidos"/>
                </p>
                <p>
                    <xsl:value-of select="/pelicula/reparto/interprete[2]/@nombre"/>
                    <!-- mostrar un espacio en blanco -->
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="/pelicula/reparto/interprete[2]/@apellidos"/>
                </p>
                <p>
                    <xsl:value-of select="/pelicula/reparto/interprete[3]/@nombre"/>
                    <!-- mostrar un espacio en blanco -->
                    <xsl:text> </xsl:text>
                    <xsl:value-of select="/pelicula/reparto/interprete[3]/@apellidos"/>
                </p>
                <!-- y así sucesivamente con el resto de intérpretes....... -->
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>