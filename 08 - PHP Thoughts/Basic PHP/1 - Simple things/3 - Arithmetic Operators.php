<?php
    $v1 = 10; // $_GET["x"];
    $v2 = 8; // $_GET["x"];
    echo "<h2>Values: $v1 e $v2</h2>";
    $m = ($v1 + $v2) / 2;
    echo "Sum : ". ($v1+$v2);
    echo "<br/>Subtraction : ". ($v1-$v2);
    echo "<br/>Multiplication : ". ($v1*$v2);
    echo "<br/>Division : ". ($v1/$v2);
    echo "<br/>Module : ". ($v1%$v2);
    echo "<br/>Media : $m";
    echo "<br/>Absolute value of $v2 is " . abs($v2);
    echo "<br/>The value of $v1<sup>$v2</sup> is " . pow($v1, $v2);
    echo "<br/>Square root of $v1 e " . sqrt($v1);
    echo "<br/>The rounded value of $v2 is " . round($v2); // ceil floor
    echo "<br/>The intire value of $v2 is " . intval($v2);
    echo "<br/>The value of $v1 in real is R$" . number_format($v1,2,",", ".");
?>