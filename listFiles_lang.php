<?php 
$path    = './';
$files = scandir($path);
$files = array_diff(scandir($path), array('.', '..'));
foreach($files as $file){
  echo "<a href='$file'>$file</a>";
  if(is_file($file)){
  $homepage = file_get_contents($file);
echo "<p>$homepage</p>";
  }
}
?>
