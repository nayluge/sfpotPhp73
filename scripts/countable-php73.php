<?php

$items = null;

if(is_countable($items)) {
    echo sprintf('There is %d items', count($items));
}
else {
    echo '$items n\'est pas countable';
}