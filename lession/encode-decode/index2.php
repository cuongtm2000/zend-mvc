<?php
 
$len = 6;
 
$base='ABCDEFGHKLMNOPQRSTWXYZabcdefghjkmnpqrstwxyz0123456789';
 
$max=strlen($base)-1;
 
$activatecode='';
 
mt_srand((double)microtime()*1000000);
 
while (strlen($activatecode)<$len+1)
 
  $activatecode.=$base{mt_rand(0,$max)};
 
 
 
echo $activatecode;
 
?>
 