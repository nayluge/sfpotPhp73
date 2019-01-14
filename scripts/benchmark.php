<?php

function add( int $foo, int $bar): string
{
    return "$foo + $bar = ".($foo+$bar);
}

echo add(1, 2,);