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
                <!-- Mostrar el nombre del primer interprete de la pel�cula -->
                <h3> Primer int�rprete </h3>
                <p> 
                    <xsl:value-of select="/pelicula/reparto/interprete/@nombre"/> 
                </p>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>