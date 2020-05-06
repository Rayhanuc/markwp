<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<?php wp_head(); ?>

</head>
<body <?php body_class( "woocommerce" ); ?>>

<!--header start-->
<header class="app-header">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="navbar navbar-expand-lg" id="mainNav">
                    <!--logo-->
                    <a class="navbar-brand mr-5 text-dark" href="javascript:;">
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
<!--header end-->