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