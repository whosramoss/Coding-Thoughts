<?php
    // Simple arr
    $arr = array(3,5,7,8,1,0);
    $arr[] = 7;
    print_r($arr);
    
    // Simple matrix
    $mat = array(array(6,4), array(4,9), array(3,2));
    $mat [0][1] = $mat[2][0] ;
    print_r($mat);

    $vetor = array("A", "C", "H", "L", "E", "F");
    $tot = count($vetor);
    echo "Vector have " . $tot . " elements.<br/>";
    print_r($vetor);
    var_dump($vetor);

    // Functions
    array_push($vetor, "END");            // add an element at the end 
    array_unshift($vetor, "BEGIN");       // add an element at the beginning
    array_pop($vetor);                    // delete last element 
    array_shift($vetor);                  // delete FIRST element 
    sort($vetor);                         // sort in growing order
    rsort($vetor);                        // sorts in descending order
    asort($vetor);                        // sorts in growing order and index too
    arsort($vetor);                       // sorts in descending order and index too
    ksort($vetor);                        // sorts indexes in growing order
    krsort($vetor);                       // sorts indexes in descending order
    
?>