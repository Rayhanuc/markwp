<?php


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


