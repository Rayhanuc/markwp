<?php

define("VERSION", time());
define("ASSETS_DIR", get_template_directory_uri()."/assets/");
function mark_theme_setup() {
    load_theme_textdomain('mark', get_template_directory_uri()."/languages");
    add_theme_support( 'post-thumbnails' );
    add_theme_support( 'title-tags' );
    add_theme_support( 'automatic-feed-links' );
    add_theme_support( 'html5', array(
        'search-form',
        'comment-form',
        'gallery',
        'caption',
        'comment-list'
    ) );
    add_theme_support( 'custom-logo' );
    register_nav_menu("top-menu", __("Top Menu", "mark"));
}
add_action('after_setup_theme', 'mark_theme_setup');

function mark_assets(){
    $css_files = array(
        'google-fonts-css' => ASSETS_DIR.'//fonts.googleapis.com/css?family=Cabin|Open+Sans:300,400,600,700',
        'fontawesome-css' => ASSETS_DIR.'vendor/bootstrap/css/bootstrap.min.css',
        // 'bootstrap-css' => ASSETS_DIR.'vendor/font-awesome/css/font-awesome.min.css',
        'bicon-css' => ASSETS_DIR.'vendor/bicon/css/bicon.css',
        'owlcarousel-css' => ASSETS_DIR.'vendor/owl/assets/owl.carousel.min.css',
        'owlcarousel-theme-css' => ASSETS_DIR.'vendor/owl/assets/owl.theme.default.min.css',
        'magnific-popup-css' => ASSETS_DIR.'vendor/magnific-popup/magnific-popup.css',
        'animate-css' => ASSETS_DIR.'vendor/animate.css',
        'mark-main-css' => ASSETS_DIR.'css/main.css',
    );

    foreach($css_files as $handle => $css_file){
        wp_enqueue_style($handle, $css_file,null, VERSION);
    }

    wp_enqueue_style('mark-css', get_stylesheet_uri(), null, VERSION);
}
add_action('wp_enqueue_scripts','mark_assets');


/*
    <!--animate css-->
    <link rel="stylesheet" href="assets/vendor/animate.css">

    <!--custom css-->
    <link href="assets/css/main.css" rel="stylesheet"> */