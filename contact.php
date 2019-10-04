<?php
require('vendor/autoload.php');

//create navigation
use aitsydney\Navigation;

$nav = new Navigation();
$navigation = $nav -> getNavigation();


//create twig loader for templates
$loader = new Twig_Loader_Filesystem('templates');

//create twig environment
$twig = new Twig_Environment($loader);

//load a twig template
$template = $twig -> load('contact.twig');

echo $template -> render( array(
    
    'title' => 'Contact Us',
    'navigation' => $navigation,
) );
?>