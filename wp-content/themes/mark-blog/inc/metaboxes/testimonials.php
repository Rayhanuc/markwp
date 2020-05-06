<?php

function mark_section_testimonials_metabox( $metaboxes ) {
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
	} else if ( 'testimonials' != $section_meta['section-type'] ) {
		return $metaboxes;
	}

	$metaboxes[] = array(
		'id'        => 'mark-testimonials-section',
		'title'     => __( 'Sections', 'mark' ),
		'post_type' => 'section',
		'context'   => 'normal',
		'priority'  => 'default',
		'sections'  => array(
			array(
				'name'   => 'mark-testimonials',
				'icon'   => 'fa fa-image',
				'fields' => array(
					array(
						'id'    => 'section-heading',
						'type'  => 'text',
						'title' => __( 'Section Heading', 'mark' ),
					),
					array(
						'id'              => 'testimonials',
						'type'            => 'group',
						'title'           => __( 'Testimonials', 'mark' ),
						'button_title'    => __( 'New Testimonial', 'mark' ),
						'accordion_title' => __( 'Add New Testimonial', 'mark' ),
						'fields'          => array(
							array(
								'id'    => 'title',
								'type'  => 'text',
								'title' => __( 'Title', 'mark' ),
							),
							array(
								'id'    => 'image',
								'type'  => 'image',
								'title' => __( 'Photo', 'mark' ),
							),
							array(
								'id'    => 'testimonial',
								'type'  => 'textarea',
								'title' => __( 'Testimonial', 'mark' ),
							)
						)
					),

				)
			)
		)
	);

	return $metaboxes;
}

add_filter( 'cs_metabox_options', 'mark_section_testimonials_metabox' );