<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package mark
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'mark' ); ?></a>

    <header class="app-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-lg" id="mainNav">
                        <!--logo-->
                        <a class="navbar-brand mr-5 text-dark" href="<?php echo home_url(); ?>">
                            <img class="" src="<?php echo get_template_directory_uri(); ?>/assets/img/logo.png"
                                 srcset="<?php echo get_template_directory_uri(); ?>/assets/img/logo@2x.png 2x" alt=""/>
                        </a>
                        <!--logo-->

                        <!--responsive toggle icon-->
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault"
                                aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon">
                                <i class="fa fa-bars"> </i>
                            </span>
                        </button>
                        <!--responsive toggle icon-->

                        <!--nav link-->
						<?php
						$mark_menu = wp_nav_menu( array(
							'container_id' => 'navbarsExampleDefault',
							'container_class'=>'collapse navbar-collapse',
							'menu_class'=>'navbar-nav ml-auto',
							'location'=>'top-menu',
							'echo'=>false
						) );

						$mark_menu = str_replace('<a','<a class="nav-link scroll_to" ',$mark_menu);
						echo wp_kses_post($mark_menu);
						?>

                    </nav>


                </div>
            </div>
        </div>

    </header>

    <!--hero section start-->
    <div id="home">
        <section class="hero base-gradient inner-banner" style="background-image: url('<?php echo get_template_directory_uri() ;?>/assets/img/inner-banner.jpg');">
            <div class="arrow-bottom-shape"> </div>
            <div class="hero-content light-txt text-center">
                <div class="container">
                    <div class="row justify-content-md-center">
                        <div class="col-md-10">
                            <h1 class="hero-title">
                                <?php bloginfo('name') ?>
                            </h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!--hero section end-->

	<div id="content" class="site-content container">
        <div class="row">
