<?xml version="1.0" encoding="iso-8859-15"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:preserve-space elements="*"/>
<xsl:template match="/">
<!-- Documento HTML con CSS -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es"> 
<head> 	 
  <!--Juego de caracteres usado: iso-8859-15 --> 
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-15"/>    
  <!-- Título de la página web -->
  <title><xsl:value-of select="/pelicula/@titulo"/> </title>   
  <!-- Hoja de Estilos aplicada al documento HTML generado--> 
  <link rel="stylesheet" type="text/css" href="estilos.css" media="screen" /> 
</head> 
<body>
  <h1><xsl:value-of select="/pelicula/@titulo"/></h1>
  <h2>Director:<xsl:text> </xsl:text>
  <xsl:value-of select="/pelicula/direccion/director/@nombre"/>
  <xsl:text> </xsl:text>
  <xsl:value-of select="/pelicula/direccion/director/@apellidos"/>
  </h2>
  <p>
  <u>Intérpretes</u>:</p>
  <!-- Mostrar a todos los interpretes ordenados por sus apellidos -->
  <xsl:for-each select="/pelicula/reparto/interprete">
    <xsl:sort select="@apellidos"/>
    <p>
    <xsl:value-of select="@apellidos"/>
    <xsl:text>, </xsl:text>
    <xsl:value-of select="@nombre"/>    
    </p>
  </xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
