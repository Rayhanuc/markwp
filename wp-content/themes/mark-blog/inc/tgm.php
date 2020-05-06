<?php

require_once get_theme_file_path( '/library/class-tgm-plugin-activation.php');

add_action( 'tgmpa_register', 'mark_tgmpa_register_required_plugins' );

function mark_tgmpa_register_required_plugins() {

	$plugins = array(

		array(
			'name'      => 'Recent Posts Widget With Thumbnails',
			'slug'      => 'recent-posts-widget-with-thumbnails',
			'required'  => false,
		),

	);

	$config = array(
		'id'           => 'mark',
		'default_path' => '',
		'menu'         => 'tgmpa-install-plugins',
		'has_notices'  => true,
		'dismissable'  => true,
		'dismiss_msg'  => '',
		'is_automatic' => false,
		'message'      => '',
	);

	tgmpa( $plugins, $config );
}
