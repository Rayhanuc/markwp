<!DOCTYPE html>
<html <?php language_attributes() ;?> >
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <?php wp_head(); ?>


</head>
<body <?php body_class("woocommerce");?>>

    <!--header start-->
    <header class="app-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-lg" id="mainNav">
                        <!--logo-->
                        <a class="navbar-brand mr-5 text-dark" href="javascript:;">
                            <img class="" src="<?php echo get_template_directory_uri();?>/assets/img/logo.png" srcset="<?php echo get_template_directory_uri();?>/assets/img/logo@2x.png 2x" alt=""/>
                        </a>
                        <!--logo-->

                        <!--responsive toggle icon-->
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon">
                                <i class="fa fa-bars"> </i>
                            </span>
                        </button>
                        <!--responsive toggle icon-->

                        <!--nav link-->
                        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a class="nav-link scroll_to" href="#home">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link scroll_to" href="#services">Services</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link scroll_to" href="#testimonial">Testimonial</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link scroll_to" href="#team">Team</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link scroll_to" href="#portfolio">Portfolio</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link scroll_to" href="#pricing">Pricing</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link scroll_to" href="#shop">Shop</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link scroll_to" href="#blog">Blog</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link scroll_to" href="#contact">Contact</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        More
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#">WooCommerce Shop</a>
                                        <a class="dropdown-item" href="#">Blog List</a>
                                        <a class="dropdown-item" href="#">Blog Details</a>
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <!--nav link-->
                    </nav>


                </div>
            </div>
        </div>

    </header>
    <!--header end-->