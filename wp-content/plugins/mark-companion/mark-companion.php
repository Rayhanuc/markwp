<?php

/*
Plugin Name: Mark Theme Companion Plugin
Plugin URI: https://
Description: Mark Theme Companion Plugin
Version: 1.0
Author: Rayhan Uddin Chowdhury
Author URI: https://
License: GPLv2 or later
Text Domain: mark-companion
Domain Path: /languages/
*/

require_once plugin_dir_path( __FILE__ )."/widgets/mark-social-widget.php";

function markc_load_textdomain() {
    load_plugin_textdomain('mark-companion', false, dirname(__FILE__)."/languages");
}
add_action('plugins_loaded', 'markc_load_textdomain');



// Register Custom Post Type
function markc_register_cpt() {

	$labels = array(
		'name'                  => _x( 'Sections', 'Post Type General Name', 'mark-companion' ),
		'singular_name'         => _x( 'Section', 'Post Type Singular Name', 'mark-companion' ),
		'menu_name'             => __( 'Sections', 'mark-companion' ),
		'name_admin_bar'        => __( 'Sections', 'mark-companion' ),
		'archives'              => __( 'Section Archives', 'mark-companion' ),
		'attributes'            => __( 'Section Attributes', 'mark-companion' ),
		'parent_item_colon'     => __( 'Parent Section:', 'mark-companion' ),
		'all_items'             => __( 'All Sections', 'mark-companion' ),
		'add_new_item'          => __( 'Add New Section', 'mark-companion' ),
		'add_new'               => __( 'Add New Section', 'mark-companion' ),
		'new_item'              => __( 'New Section', 'mark-companion' ),
		'edit_item'             => __( 'Edit Section', 'mark-companion' ),
		'update_item'           => __( 'Update Section', 'mark-companion' ),
		'view_item'             => __( 'View Section', 'mark-companion' ),
		'view_items'            => __( 'View Sections', 'mark-companion' ),
		'search_items'          => __( 'Search Section', 'mark-companion' ),
		'not_found'             => __( 'Not found', 'mark-companion' ),
		'not_found_in_trash'    => __( 'Not found in Trash', 'mark-companion' ),
		'section_image'        => __( 'Section Image', 'mark-companion' ),
		'set_section_image'    => __( 'Set section image', 'mark-companion' ),
		'remove_section_image' => __( 'Remove section image', 'mark-companion' ),
		'use_section_image'    => __( 'Use as section image', 'mark-companion' ),
		'insert_into_item'      => __( 'Insert into section', 'mark-companion' ),
		'uploaded_to_this_item' => __( 'Uploaded to this section', 'mark-companion' ),
		'items_list'            => __( 'Sections list', 'mark-companion' ),
		'items_list_navigation' => __( 'Sections list navigation', 'mark-companion' ),
		'filter_items_list'     => __( 'Filter sections list', 'mark-companion' ),
	);
	$args = array(
		'label'                 => __( 'Section', 'mark-companion' ),
		'description'           => __( 'Sections', 'mark-companion' ),
		'labels'                => $labels,
		'supports'              => array( 'title', 'thumbnail' ),
		'hierarchical'          => false,
		'public'                => false,
		'show_ui'               => true,
		'show_in_menu'          => true,
		'menu_position'         => 20,
		'show_in_admin_bar'     => false,
		'show_in_nav_menus'     => true,
		'can_export'            => true,
		'has_archive'           => false,
		'exclude_from_search'   => true,
		'publicly_queryable'    => true,
		'capability_type'       => 'page',
	);
	register_post_type( 'section', $args );

}
add_action( 'init', 'markc_register_cpt', 0 );