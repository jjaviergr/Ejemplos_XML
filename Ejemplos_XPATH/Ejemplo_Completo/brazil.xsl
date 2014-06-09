<?xml version="1.0" encoding="iso-8859-15"?>
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:template match="/">
        <xsl:text> Nodo raíz: </xsl:text>
        <xsl:value-of select="/"/>
        <xsl:text> Eslogan: </xsl:text>
        <xsl:value-of select="/pelicula/esloganes/eslogan"/>
        <xsl:text> Nombre primer Actor: </xsl:text>
        <xsl:value-of select="/pelicula/reparto/interprete/@nombre"/>
        <xsl:text> Instrucciones de proceso: </xsl:text>
        <xsl:value-of select="processing-instruction()"/>
        <xsl:text> Comentario de Eslogan: </xsl:text>
        <xsl:value-of select="/pelicula/esloganes/comment()"/>
        <xsl:text> Número de intérpretes: </xsl:text>
        <xsl:value-of select="count(/pelicula/reparto/interprete)"/>
        <xsl:text> Número de guionistas: </xsl:text>
        <xsl:value-of select="count(/pelicula/guion/guionista)"/>
        <xsl:text> Unir cadenas, seleccionar los apellidos y nombre: </xsl:text>
        <xsl:for-each select="/pelicula/reparto/interprete">
            <xsl:value-of select="concat(@apellidos,', ',@nombre)"/>
            <xsl:text>. </xsl:text>
        </xsl:for-each>
        <xsl:text> Obtener la suma de la valoracion de los interpretes: </xsl:text>
        <xsl:value-of select="sum(/pelicula/reparto/interprete/@valoracion)"/>
        <xsl:variable name="total" select="count(/pelicula/reparto/interprete)" />
        <xsl:text> Total de interpretes: </xsl:text>
        <xsl:value-of select="$total"/>
        <xsl:text> Media de valoración de intérpretes: </xsl:text>
        <xsl:value-of select="sum(/pelicula/reparto/interprete/@valoracion) div
count(/pelicula/reparto/interprete)" />
        <xsl:variable name="media" select="sum(/pelicula/reparto/interprete/@valoracion) div
$total" />
        <!-- para multiplar *, suma +, resta -, división div, resto mod -->
        <xsl:text> Mostrar el valor de la variable media: </xsl:text>
        <xsl:value-of select="$media"/>
    </xsl:template>
</xsl:stylesheet>