<?php


require_once (get_theme_file_path("/library/csf/cs-framework.php"));
require_once (get_theme_file_path("/inc/metaboxes/sections.php"));
require_once (get_theme_file_path("/inc/metaboxes/banner.php"));
require_once (get_theme_file_path("/inc/metaboxes/mission.php"));
require_once (get_theme_file_path("/inc/metaboxes/features.php"));
require_once (get_theme_file_path("/inc/metaboxes/about.php"));
require_once (get_theme_file_path("/inc/metaboxes/services.php"));
require_once (get_theme_file_path("/inc/metaboxes/benefits.php"));
require_once (get_theme_file_path("/inc/metaboxes/testimonials.php"));
require_once (get_theme_file_path("/inc/metaboxes/image_info.php"));
require_once (get_theme_file_path("/inc/metaboxes/counter.php"));
require_once (get_theme_file_path("/inc/metaboxes/cta.php"));
require_once (get_theme_file_path("/inc/metaboxes/team.php"));
require_once (get_theme_file_path("/inc/metaboxes/portfolio.php"));
require_once (get_theme_file_path("/inc/metaboxes/pricing.php"));
require_once (get_theme_file_path("/inc/metaboxes/shop.php"));
require_once (get_theme_file_path("/inc/metaboxes/blog.php"));
require_once (get_theme_file_path("/inc/metaboxes/clients.php"));
require_once (get_theme_file_path("/inc/metaboxes/subscription.php"));
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

    add_image_size('mark-fullsize', 1400, 99999);
    add_image_size('mark-landscape-one', 583, 383, true);
    add_image_size('mark-client-logo', 192, 99999);
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

function mark_get_social_fields() {
    $fields = array();
    
    $social_profiles = apply_filters( 'mark_social_profiles', array('facebook','youtube','twitter'));
    foreach($social_profiles as $social_profile) {
        $field = array(
            'id' => $social_profile,
            'type' => 'text',
            'title' => ucfirst($social_profile),
        );
        array_push($fields, $field);
    }
    return $fields;
}

/*
function mark_social_profile_fields($profiles){
    array_push($profiles,'kamba');
    return $profiles;
}
add_filter('mark_social_profiles','mark_social_profile_fields');
*/


function mark_widgets_init() {
    register_sidebar(
        array(
            'name'          => __( 'Footer Section', 'markwp' ),
            'id'            => 'footer-left',
            'description'   => __( 'Footer section, Left side', 'markwp' ),
            'before_widget' => '<div id="%1$s" class="widget %2$s">',
            'after_widget'  => '</div>',
            'before_title'  => '<h5>',
            'after_title'   => '</h5>',
        )
    );
}
add_action('widgets_init', 'mark_widgets_init');