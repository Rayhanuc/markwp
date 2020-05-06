<?php

function mark_section_about_metabox( $metaboxes ) {

	$section_id = 0;

	if ( isset( $_REQUEST['post'] ) || isset( $_REQUEST['post_ID'] ) ) {
		$section_id = empty( $_REQUEST['post_ID'] ) ? $_REQUEST['post'] : $_REQUEST['post_ID'];
	}

	if ( 'section' != get_post_type( $section_id ) ) {
		return $metaboxes;
	}

	$section_meta = get_post_meta( $section_id, 'mark-section-type', true );
	if ( ! $section_meta ) {
		return $metaboxes;
	} else if ( 'about' != $section_meta['section-type'] ) {
		return $metaboxes;
	}

	$metaboxes[] = array(
		'id'        => 'mark-section-about',
		'title'     => __( 'About Settings', 'mark' ),
		'post_type' => 'section',
		'context'   => 'normal',
		'priority'  => 'default',
		'sections'  => array(
			array(
				'name'   => 'mark-section-type-about',
				'icon'   => 'fa fa-image',
				'fields' => array(

					array(
						'id'      => 'heading',
						'type'    => 'text',
						'title'   => __( 'About Heading', 'mark' ),
						'default' => __( 'About Us', 'mark' )
					),
					array(
						'id'      => 'sub-heading',
						'type'    => 'text',
						'title'   => __( 'About Sub-Heading', 'mark' ),
						'default' => __( 'About Us Subheading', 'mark' )
					),

					array(
						'id'    => 'about-description',
						'type'  => 'wysiwyg',
						'title' => __( 'About Description', 'mark' ),
					),
					array(
						'id'      => 'about-button-display',
						'type'    => 'switcher',
						'title'   => __( 'Display Button', 'mark' ),
						'default' => 1
					),
					array(
						'id'    => 'about-button-label',
						'type'  => 'text',
						'title' => __( 'Button Label', 'mark' ),
						'default'=>__( 'Read More', 'mark' ),
						'dependency'=>array('about-button-display','==','1')
					),
					array(
						'id'    => 'about-button-url',
						'type'  => 'text',
						'title' => __( 'Button Url', 'mark' ),
						'dependency'=>array('about-button-display','==','1')
					),
				)
			)
		)
	);

	return $metaboxes;
}

add_filter( 'cs_metabox_options', 'mark_section_about_metabox' );