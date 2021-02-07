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
                $v =  array ( 0 => 5, 1 => 9,  2 => 8, 3 => 7);
                unset($v[2]); # will deallocate the index vector 2
                print_r($v);
                echo "----------------------------------------------";
                $table =  array ( "name" => "Jhon", "Age" => 18);
                $table["smoke"] = false;
                print_r($table);
                foreach ($table as $filed => $value) {
                    echo "Value of $filed is $value <br/>"; 
                }
            ?>
        </table> 
    </pre>

</div>
</body>
</html>
 