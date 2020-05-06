<?php
require_once( get_theme_file_path( "/library/csf/cs-framework.php" ) );
require_once( get_theme_file_path( "/inc/tgm.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/sections.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/banner.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/mission.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/features.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/about.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/services.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/benefits.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/testimonials.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/counter.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/cta.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/team.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/portfolio.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/pricing.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/shop.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/clients.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/subscription.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/image_info.php" ) );
require_once( get_theme_file_path( "/inc/metaboxes/page-sections.php" ) );
define( 'CS_ACTIVE_FRAMEWORK', false ); // default true
define( 'CS_ACTIVE_METABOX', true ); // default true
define( 'CS_ACTIVE_TAXONOMY', false ); // default true
define( 'CS_ACTIVE_SHORTCODE', false ); // default true
define( 'CS_ACTIVE_CUSTOMIZE', false ); // default true

define( "VERSION", time() );
define( "ASSETS_DIR", get_template_directory_uri() . "/assets/" );

if (!function_exists('mark_setup')) :
    /**
     * Sets up theme defaults and registers support for various WordPress features.
     *
     * Note that this function is hooked into the after_setup_theme hook, which
     * runs before the init hook. The init hook is too late for some features, such
     * as indicating support for post thumbnails.
     */
    function mark_setup()
    {
        /*
         * Make theme available for translation.
         * Translations can be filed in the /languages/ directory.
         * If you're building a theme based on mark, use a find and replace
         * to change 'mark' to the name of your theme in all the template files.
         */
        load_theme_textdomain('mark', get_template_directory() . '/languages');

        // Add default posts and comments RSS feed links to head.
        add_theme_support('automatic-feed-links');

        /*
         * Let WordPress manage the document title.
         * By adding theme support, we declare that this theme does not use a
         * hard-coded <title> tag in the document head, and expect WordPress to
         * provide it for us.
         */
        add_theme_support('title-tag');

        /*
         * Enable support for Post Thumbnails on posts and pages.
         *
         * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
         */
        add_theme_support('post-thumbnails');


        /*
         * Switch default core markup for search form, comment form, and comments
         * to output valid HTML5.
         */
        add_theme_support('html5', array(
            'search-form',
            'comment-form',
            'comment-list',
            'gallery',
            'caption',
        ));

        // Set up the WordPress core custom background feature.
        add_theme_support('custom-background', apply_filters('mark_custom_background_args', array(
            'default-color' => 'ffffff',
            'default-image' => '',
        )));

        // Add theme support for selective refresh for widgets.
        add_theme_support('customize-selective-refresh-widgets');


	    add_theme_support( 'custom-logo' );
	    register_nav_menu( "top-menu", __( "Top Menu", "mark" ) );

	    add_image_size( 'mark-fullsize', 1400, 99999 );
	    add_image_size( 'mark-landscape-one', 583, 383, true );
	    add_image_size( 'mark-logo', 192, 99999 );
	    add_theme_support( 'customize-selective-refresh-widgets' );
    }
endif;
add_action('after_setup_theme', 'mark_setup');

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function mark_content_width()
{
    // This variable is intended to be overruled from themes.
    // Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
    // phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
    $GLOBALS['content_width'] = apply_filters('mark_content_width', 640);
}

add_action('after_setup_theme', 'mark_content_width', 0);

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function mark_widgets_init()
{
    register_sidebar(array(
        'name' => esc_html__('Sidebar', 'mark'),
        'id' => 'sidebar-1',
        'description' => esc_html__('Add widgets here.', 'mark'),
        'before_widget' => '<section id="%1$s" class="widget %2$s">',
        'after_widget' => '</section>',
        'before_title' => '<h2 class="widget-title">',
        'after_title' => '</h2>',
    ));

	register_sidebar( array(
		'name'          => __( 'Footer Section', 'mark' ),
		'id'            => 'footer-left',
		'description'   => __( 'footer section, left side', 'mark' ),
		'before_widget' => '<div id="%1$s" class="%2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h5>',
		'after_title'   => '</h5>',
	) );

	register_sidebar( array(
		'name'          => __( 'Footer Middle Section', 'mark' ),
		'id'            => 'footer-middle',
		'description'   => __( 'footer middle section, left side', 'mark' ),
		'before_widget' => '<div id="%1$s" class="%2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h5>',
		'after_title'   => '</h5>',
	) );

	register_sidebar( array(
		'name'          => __( 'Footer Right Section', 'mark' ),
		'id'            => 'footer-right',
		'description'   => __( 'footer right section, left side', 'mark' ),
		'before_widget' => '<div id="%1$s" class="%2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h5>',
		'after_title'   => '</h5>',
	) );
}

add_action('widgets_init', 'mark_widgets_init');

/**
 * Enqueue scripts and styles.
 */
function mark_scripts()
{
    wp_enqueue_style('bootstrap-css', '//stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css');
    wp_enqueue_style('mark-style', get_stylesheet_uri());


    wp_enqueue_script('popper-js', '//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js', array('jquery'), '4.1', true);
    wp_enqueue_script('bootstrap-js', '//stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js', array('jquery'), '4.1', true);
    wp_enqueue_script('mark-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true);

    wp_enqueue_script('mark-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true);

    if (is_singular() && comments_open() && get_option('thread_comments')) {
        wp_enqueue_script('comment-reply');
    }
}

add_action('wp_enqueue_scripts', 'mark_scripts');

function mark_menu_filter( $classes , $item, $args ){
	if(isset($args->location)) {
		if ( 'top-menu' == $args->location ) {
			$classes[] = 'nav-item';
		}
	}
	return $classes;
}

add_filter( 'nav_menu_css_class', 'mark_menu_filter', 10, 3 );

function mark_assets() {
	$css_files = array(
		'google-fonts-css'      => '//fonts.googleapis.com/css?family=Cabin|Open+Sans:300,400,600,700',
		'bootstrap-css'         => ASSETS_DIR . 'vendor/bootstrap/css/bootstrap.min.css',
		'fontawesome-css'       => ASSETS_DIR . 'vendor/font-awesome/css/font-awesome.min.css',
		'bicon-css'             => ASSETS_DIR . 'vendor/bicon/css/bicon.css',
		'owlcarousel-css'       => ASSETS_DIR . 'vendor/owl/assets/owl.carousel.min.css',
		'owlcarousel-theme-css' => ASSETS_DIR . 'vendor/owl/assets/owl.theme.default.min.css',
		'magnific-popup-css'    => ASSETS_DIR . 'vendor/magnific-popup/magnific-popup.css',
		'animate-css'           => ASSETS_DIR . 'vendor/animate.css',
		'mark-main-css'         => ASSETS_DIR . 'css/main.css'
	);

	foreach ( $css_files as $handle => $css_file ) {
		wp_enqueue_style( $handle, $css_file, null, VERSION );
	}

	wp_enqueue_style( 'mark-css', get_stylesheet_uri(), null, VERSION );

	$js_files = array(
		'bootstrap-js'            => array(
			'src' => ASSETS_DIR . 'vendor/bootstrap/js/bootstrap.min.js',
			'dep' => array( 'jquery' )
		),
		'owlcarousel-js'          => array(
			'src' => ASSETS_DIR . 'vendor/owl/owl.carousel.min.js',
			'dep' => array( 'jquery' )
		),
		'magnific-popup-js'       => array(
			'src' => ASSETS_DIR . 'vendor/magnific-popup/jquery.magnific-popup.min.js',
			'dep' => array( 'jquery' )
		),
		'wow-js'                  => array( 'src' => ASSETS_DIR . 'vendor/wow.min.js', 'dep' => array( 'jquery' ) ),
		'visible-js'              => array( 'src' => ASSETS_DIR . 'vendor/visible.js', 'dep' => array( 'jquery' ) ),
		'jquery-animatenumber-js' => array(
			'src' => ASSETS_DIR . 'vendor/jquery.animateNumber.min.js',
			'dep' => array( 'jquery' )
		),
		'isotope-js'              => array( 'src' => ASSETS_DIR . 'vendor/jquery.isotope.js' ),
		'imagesloaded-js'         => array( 'src' => ASSETS_DIR . 'vendor/imagesloaded.js' ),
		'mark-js'                 => array( 'src' => ASSETS_DIR . 'js/scripts.js', 'dep' => array( 'jquery' ) ),

	);

	foreach ( $js_files as $handle => $js_file ) {
		wp_enqueue_script( $handle, $js_file['src'], isset( $js_file['dep'] ) ? $js_file['dep'] : null, VERSION, true );
	}
}

add_action( 'wp_enqueue_scripts', 'mark_assets' );

function mark_csf_init() {
	CSFramework_Metabox::instance( array() );
}

add_action( 'init', 'mark_csf_init' );

function mark_get_social_fields(){
	$fields = array();
	$social_profiles = apply_filters('mark_social_profiles',array('facebook','twitter','youtube'));
	foreach($social_profiles as $social_profile){
		$field = array(
			'id'    => $social_profile,
			'type'  => 'text',
			'title' => ucfirst($social_profile),
		);
		array_push($fields,$field);
	}
	return $fields;
}

function mark_social_profile_fields($profiles){
	array_push($profiles,'dribbble');
	return $profiles;
}
add_filter('mark_social_profiles','mark_social_profile_fields');



add_filter('wp_calculate_image_srcset_meta','__return_empty_array');

function mark_widget_nav_menu_args($nav_menu_args, $nav_menu, $args, $instance){
	if(isset($nav_menu_args['menu_class'])) {
		$nav_menu_args['menu_class'] .= ' list-unstyled short-links';
	}else{
		$nav_menu_args['menu_class'] = 'list-unstyled short-links';
	}
	return $nav_menu_args;
}
add_filter('widget_nav_menu_args','mark_widget_nav_menu_args',10,4);

function mark_change_nav_menu( $menus ) {
	$string_to_replace = home_url( "/" ) . "section/";
	if ( is_front_page() ) {
		foreach ( $menus as $menu ) {
			$new_url = str_replace( $string_to_replace, "#", $menu->url );

			if ( $new_url != $menu->url ) {
				$new_url = rtrim( $new_url, "/" );
			}

			$menu->url = $new_url;
		}
	}

	return $menus;
}

add_filter( 'wp_nav_menu_objects', 'mark_change_nav_menu' );

function mark_comment_form_field($fields){
	$comment_field = $fields['comment'];
	unset($fields['comment']);
	$fields['comment'] = $comment_field;
	return $fields;
}
add_filter('comment_form_fields','mark_comment_form_field');

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if (defined('JETPACK__VERSION')) {
    require get_template_directory() . '/inc/jetpack.php';
}

