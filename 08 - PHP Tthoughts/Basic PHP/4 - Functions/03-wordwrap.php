<?php
  $t = "Here we have a giant text that will show how the wordwrap function works";
  $r = wordwrap($t, 20, "<br/>\n" , false); 
  echo $r; 
?>