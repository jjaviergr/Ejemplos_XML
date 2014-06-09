<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <!-- Donde comienza la consulta -->
    <xsl:template match="/">
        <!-- Acceder al eslogan mediante una ruta absoluta, empieza en / -->
        <xsl:value-of select="/"/>
    </xsl:template>
</xsl:stylesheet>