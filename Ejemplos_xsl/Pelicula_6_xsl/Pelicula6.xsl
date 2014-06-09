<?xml version="1.0" encoding="iso-8859-15"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:preserve-space elements="*"/>
    <!-- Definición del formate europeo para números con decimales y separador de miles -->
    <xsl:decimal-format name="european" decimal-separator=',' grouping-separator='.'/>
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="/pelicula/titulo"/>
                </title>
            </head>
            <body>
                <b>
                    <xsl:value-of select="/pelicula/titulo"/>
                </b>
                <br/>
                <!-- Mostrar el precio en formato europeo -->
                Precio: <xsl:value-of select="format-number(/pelicula/dvd/euros, '###.###,00', 'european')"/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>