<?php
    // Money
    $price = $_GET["p"];
    echo "The price is $ " . number_format($price, 2);
    $price += $price*10/100;
    echo "<br/>And the new price with 10% increase will be $ " . number_format($price, 2);

    // Dates
    $year = $_GET["year"]; 
    echo "The current year is $year and the previous year is " . --$year;

    $a = 3;
    $b = &$a;
    echo "a = $a and b = $b";
    $b += 5;
    echo "<br/>b = $b";
    $x = "abc";
    $$x = "def";
    echo "x = $x";
?>