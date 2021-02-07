<?php   
    function helloWorld() {
        echo "<h1>hello World!!</h1>";
    }
    function showValue($v) {
        echo "<h2>My value = $v</h2>";
    }
    function sum1 ($a, $b){
        $s = $a+$b;
        echo "<p>Sum = $s</p>";	
    }
    function sum2 () {
        $p = func_get_arg();
        $tot = func_num_args();
        $s = 0;
        for ($i=0; $i<$t ; $i++) { 
            $s += $p[$i];
        }
        return $s;
    }
?>

