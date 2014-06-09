<?xml version="1.0"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:template match="/">
        <!-- Comentario dentro del elemento esloganes -->
        <xsl:value-of select="/pelicula/esloganes/comment()"/>
    </xsl:template>
</xsl:stylesheet>
