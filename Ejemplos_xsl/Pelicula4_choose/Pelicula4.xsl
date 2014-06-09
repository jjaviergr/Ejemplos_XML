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
                    <xsl:choose>
                        <!-- Nombre y apellidos de los interpretes que su papel es el de protagonista -->
                        <xsl:when test="@papel = 'protagonista'">
                            <xsl:value-of select="@nombre"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="@apellidos"/>
                            <br/>
                        </xsl:when>
                        <!-- Nombre y apellidos (en cursiva y con paréntesis)
                        de los interpretes que no son protagonistas -->
                        <xsl:otherwise>
                            (<i>
                                <xsl:value-of select="@nombre"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="@apellidos"/>
                            </i>)<br/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>