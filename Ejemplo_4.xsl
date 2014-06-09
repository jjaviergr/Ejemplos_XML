<?xml version="1.0" encoding="iso-8859-15"?>
<!-- Definici�n del Espacio de nombres y versi�n XSL -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:preserve-space elements="*"/>
    <!-- Se aplican las transformaciones desde el nodo ra�z -->
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <!-- t�tulo de la pel�cula como t�tulo de la p�gina -->
                    <xsl:value-of select="/pelicula/@titulo"/>
                </title>
            </head>
            <body>
                <!-- Mostrar el nombre y apellidos cada interprete de la pel�cula -->
                <h3> Int�rpretes </h3>
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
                <!-- y as� sucesivamente con el resto de int�rpretes....... -->
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>