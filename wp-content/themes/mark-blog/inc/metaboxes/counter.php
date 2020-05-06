<?php

function mark_section_counters_metabox( $metaboxes ) {
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
	} else if ( 'counter' != $section_meta['section-type'] ) {
		return $metaboxes;
	}

	$metaboxes[] = array(
		'id'        => 'mark-counters-section',
		'title'     => __( 'Fun Factor', 'mark' ),
		'post_type' => 'section',
		'context'   => 'normal',
		'priority'  => 'default',
		'sections'  => array(
			array(
				'name'   => 'mark-counters',
				'icon'   => 'fa fa-image',
				'fields' => array(
					array(
						'id'              => 'counters',
						'type'            => 'group',
						'title'           => __( 'Fun Factors', 'mark' ),
						'button_title'    => __( 'New Fun Factor', 'mark' ),
						'accordion_title' => __( 'Add New Fun Factor', 'mark' ),
						'fields'          => array(
							array(
								'id'    => 'title',
								'type'  => 'text',
								'title' => __( 'Fun Factor Heading', 'mark' ),
							),array(
								'id'    => 'number',
								'type'  => 'text',
								'title' => __( 'Fun Factor Number', 'mark' ),
							),

						)
					),

				)
			)
		)
	);

	return $metaboxes;
}

add_filter( 'cs_metabox_options', 'mark_section_counters_metabox' );