<?php

$arr = ['apple', 'orange'];
list($a, &$b) = $arr;
$b = 'banana';
echo $arr[1];