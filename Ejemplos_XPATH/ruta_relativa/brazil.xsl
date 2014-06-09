<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- Donde comienza la consulta -->
    <xsl:template match="/pelicula">
        <!-- Acceder al eslogan mediante una ruta relativa empieza en /pelicula -->
        <xsl:value-of select="esloganes/eslogan"/>
    </xsl:template>
</xsl:stylesheet>