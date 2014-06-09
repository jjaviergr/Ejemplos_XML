<?xml version="1.0" encoding="iso-8859-15"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:template match="/">
        <xsl:text>Intérpretes: </xsl:text>
        <!-- contar cuantos interpretes hay en la película -->
        <xsl:value-of select="count(/pelicula/reparto/interprete)"/>
    </xsl:template>
</xsl:stylesheet>
