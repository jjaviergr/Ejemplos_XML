<?xml version="1.0" encoding="iso-8859-15"?>
<!-- Documento XSL se graba con extensi�n xsl, p.e pelicula.xsl -->
<!-- Definici�n del Espacio de nombres y versi�n XSL -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:preserve-space elements="*"/>
    <!-- Se aplican las transformaciones desde el nodo ra�z -->
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <!-- Mostrar el contenido de un nodo -->
                    <xsl:value-of select="/pelicula/text()"/>
                </title>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="/pelicula/text()"/>
                </h1>
                <b>Director</b>:
                <!-- Mostrar el contenido de un nodo -->
                <xsl:value-of select="/pelicula/director"/>
                <br/>
                <b>Protagonista</b>:
                <xsl:value-of select="/pelicula/actores/actor"/>
                <br/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>