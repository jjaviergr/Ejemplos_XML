<?xml version="1.0"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:template match="/">
        <!-- Texto dentro del elemento eslogan -->
        <xsl:value-of select="/pelicula/esloganes/eslogan/text()"/>
    </xsl:template>
</xsl:stylesheet>
