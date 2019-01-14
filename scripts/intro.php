<?php

class SfpotPresentation
{
    private $title;

    private $author;

    public function __construct($title, $author)
    {
        $this->author = $author;
        $this->title = $title;
    }
}

$prez = new SfpotPresentation('PhP 7.3 News', 'Cyril Souillard');