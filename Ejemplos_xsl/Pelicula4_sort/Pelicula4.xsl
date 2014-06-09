<?xml version="1.0" encoding="iso-8859-15"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:preserve-space elements="*"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="/pelicula/@titulo"/>
                </title>
            </head>
            <body>
                <b>
                    <xsl:value-of select="/pelicula/@titulo"/>
                </b>
                <br/>
                <u>Director</u>:<xsl:text> </xsl:text>
                <xsl:value-of select="/pelicula/direccion/director/@nombre"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="/pelicula/direccion/director/@apellidos"/>
                <br/>
                <u>Intérpretes</u>:<br/>
                <!-- Mostrar a todos los interpretes ordenados por sus apellidos -->
                <xsl:for-each select="/pelicula/reparto/interprete">
                    <xsl:sort select="@apellidos" order="descending"/>
                    <xsl:value-of select="@apellidos"/>
                    <xsl:text>, </xsl:text>
                    <xsl:value-of select="@nombre"/>
                    <br/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>