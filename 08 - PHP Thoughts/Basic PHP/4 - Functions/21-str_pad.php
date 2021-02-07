<?php
  $name = "Ramos";
  # 30 spaces completed on the RIGHT = STR_PAD_RIGHT, 
  # 30 spaces completed on the CENTER = STR_PAD_CENTER , 
  # 30 spaces completed on the LEFT   = STR_PAD_LEFT  
  $new = str_pad($name, 30," ", STR_PAD_RIGHT);
  echo "You are $new";
?>
