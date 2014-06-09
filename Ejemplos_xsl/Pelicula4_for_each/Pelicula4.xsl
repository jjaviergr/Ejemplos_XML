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
                <xsl:for-each select="/pelicula/reparto/interprete">
                    <!-- mostrar el valor del atributo nombre -->
                    <xsl:value-of select="@nombre"/>
                    <!-- insertar un espacio entre el nombre y los apellidos -->
                    <xsl:text> </xsl:text>
                    <!-- mostrar el valor del atributo apellidos -->
                    <xsl:value-of select="@apellidos"/>
                    <br/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>