<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css"/>
    <meta charset="UTF-8"/>
    <title>Basic PHP</title>
</head>
<body>
<div>
	<pre> <!-- <pre></pre> = compact visualization method for vectors -->
    <table border="1"><tr> <!-- <table><tr></table> = create a table -->
        <?php
            //the vector starts at number 5 and stops at number 20 jumping every 5
            $c = range(5, 20, 5);
            print_r($c);
            foreach ($c as $v) {
                echo "$v";
            }
        ?>
    </table> 
   </pre>
</div>
</body>
</html>
 