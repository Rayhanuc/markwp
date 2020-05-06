<?php

function mark_section_imageinfo_metabox( $metaboxes ) {

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
	} else if ( 'image_info' != $section_meta['section-type'] ) {
		return $metaboxes;
	}

	$metaboxes[] = array(
		'id'        => 'mark-section-imageinfo',
		'title'     => __( 'Image Section Settings', 'mark' ),
		'post_type' => 'section',
		'context'   => 'normal',
		'priority'  => 'default',
		'sections'  => array(
			array(
				'name'   => 'mark-section-type-imageinfo',
				'icon'   => 'fa fa-image',
				'fields' => array(

					array(
						'id'      => 'heading',
						'type'    => 'text',
						'title'   => __( 'Imageinfo Heading', 'mark' ),
					),


					array(
						'id'    => 'description',
						'type'  => 'wysiwyg',
						'title' => __( 'Imageinfo Description', 'mark' ),
					),
					array(
						'id'      => 'image',
						'type'    => 'image',
						'title'   => __( 'Image', 'mark' ),
					),

				)
			)
		)
	);

	return $metaboxes;
}

add_filter( 'cs_metabox_options', 'mark_section_imageinfo_metabox' );