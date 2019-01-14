<?php

$items = null;

if(is_array($items) || $items instanceof Countable) {
    echo sprintf('There is %d items', count($items));
}
else {
    echo '$items n\'est pas countable';
}

echo sprintf('There is %d items', count($items));