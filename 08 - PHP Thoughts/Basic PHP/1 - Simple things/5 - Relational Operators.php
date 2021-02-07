<?php
    $n1 = $_GET["a"];
    $n2 = $_GET["b"];
    $type = $_GET["type"];
    echo "Values =  $n1 and $n2 <br/>";
    $r = ($type == "s") ? $n1+$n2 : $n1*$n2;
    echo "Result =  $r";

    $a = 3;
    $b = "3";
    $r = ($a === $b)?"yes":"no";
    echo "Are variables A and B the same? $r";

    $grade1 = $_GET["grade1"];
    $grade2 = $_GET["grade2"];
    $m = ($grade1+$grade2)/2;
    echo "Media = $m <br/>";
    echo "Student is" . (($m<6)?"DISAPPROVED":"APPROVED");

    $year = $_GET["year"];
    $age = 2020 - $year;
    echo "Whoever was born in $ano is $idade years old.";
    $z = ($age>=18 && $age<65)? "young": "old";
    echo "that person is young $z";
?>