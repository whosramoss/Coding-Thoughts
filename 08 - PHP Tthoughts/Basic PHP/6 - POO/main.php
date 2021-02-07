<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8"/>
  <title>POO</title>
</head>
<body>
<div>
  <?php
    require_once 'Movies.php';

    $actor1 = new Actor;
    $actor1 -> firstname = "Brad";
    $actor1 -> lastname = "Pitt";
    $actor1 -> age = 56;
    $actor1 -> acting = false;
    $actor1 -> act();
    $actor1 -> actNow();
		print_r($c1);
		echo "<br/>";
	
		$actor2 = new Actor;
    $actor2 -> firstname = "Bruce";
    $actor2 -> lastname = "Lee";
    $actor2 -> age = 53;
		$actor2 -> act();
    print_r($c1);
    
  ?>
</div>
</body>
</html>
 