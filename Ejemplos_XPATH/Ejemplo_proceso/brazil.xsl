<?xml version="1.0"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:template match="/">
        <!-- Instrucción de proceso a partir del elemento raíz -->
        <xsl:value-of select="processing-instruction()"/>
    </xsl:template>
</xsl:stylesheet>