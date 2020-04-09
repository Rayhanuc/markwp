<?php

require_once (get_theme_file_path("/library/csf/cs-framework.php"));
require_once (get_theme_file_path("/inc/metaboxes/sections.php"));
require_once (get_theme_file_path("/inc/metaboxes/banner.php"));
require_once (get_theme_file_path("/inc/metaboxes/page-sections.php"));

 // active modules
define( 'CS_ACTIVE_FRAMEWORK',   false  );
define( 'CS_ACTIVE_METABOX',     true  );
define( 'CS_ACTIVE_TAXONOMY',    false  );
define( 'CS_ACTIVE_SHORTCODE',   false  );
define( 'CS_ACTIVE_CUSTOMIZE',   false  );
define( 'CS_ACTIVE_LIGHT_THEME', false );

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
    // css enqueue start
    $css_files = array(
        'google-fonts-css' => ASSETS_DIR.'//fonts.googleapis.com/css?family=Cabin|Open+Sans:300,400,600,700',
        'bootstrap-css' => ASSETS_DIR.'vendor/bootstrap/css/bootstrap.min.css',
        'fontawesome-css' => ASSETS_DIR.'vendor/font-awesome/css/font-awesome.min.css',
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
    // css enqueue end

    // js enqueue start
    $js_files = array(
        'bootstrap-js' => array('src'=>ASSETS_DIR.'vendor/bootstrap/js/bootstrap.min.js', 'dep'=>array('jquery')),
        'owlcarousel-js' => array('src'=>ASSETS_DIR.'vendor/owl/owl.carousel.min.js', 'dep'=>array('jquery')),
        'magnific-popup-js' => array('src'=>ASSETS_DIR.'vendor/magnific-popup/jquery.magnific-popup.min.js', 'dep'=>array('jquery')),
        'wow-js' => array('src'=>ASSETS_DIR.'vendor/wow.min.js', 'dep'=>array('jquery')),
        'visible-js' => array('src'=>ASSETS_DIR.'vendor/visible.js', 'dep'=>array('jquery')),
        'jquery-animatenumber-js' => array('src'=>ASSETS_DIR.'vendor/jquery.animateNumber.min.js', 'dep'=>array('jquery')),
        'isotope-js' => array('src'=>ASSETS_DIR.'vendor/jquery.isotope.js'),
        'imagesloaded-js' => array('src'=>ASSETS_DIR.'vendor/imagesloaded.js'),
        'mark-js' => array('src'=>ASSETS_DIR.'js/scripts.js', 'dep'=>array('jquery')),
    );

    foreach ($js_files as $handle=>$js_file) {
        wp_enqueue_script($handle, $js_file['src'], isset($js_file['dep']) ? $js_file['dep']:null, VERSION, true);
    }
    // js enqueue end
}
add_action('wp_enqueue_scripts','mark_assets');

function mark_csf_init() {
    CSFramework_Metabox::instance(array());
}
add_action('init','mark_csf_init');