<?php

function mark_section_mission_metabox( $metaboxes ) {

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
	} else if ( 'mission' != $section_meta['section-type'] ) {
		return $metaboxes;
	}

	$metaboxes[] = array(
		'id'        => 'mark-section-mission',
		'title'     => __( 'Mission Settings', 'mark' ),
		'post_type' => 'section',
		'context'   => 'normal',
		'priority'  => 'default',
		'sections'  => array(
			array(
				'name'   => 'mark-section-type-mission',
				'icon'   => 'fa fa-image',
				'fields' => array(

					array(
						'id'      => 'heading',
						'type'    => 'text',
						'title'   => __( 'Mission Heading', 'mark' ),
						'default' => __( 'Here We Are', 'mark' )
					),
					array(
						'id'      => 'sub-heading',
						'type'    => 'text',
						'title'   => __( 'Mission Sub-Heading', 'mark' ),
						'default' => __( 'Our mission is very simple. we just wanna dominate our space', 'mark' )
					),

					array(
						'id'    => 'mission-description',
						'type'  => 'wysiwyg',
						'title' => __( 'Mission Description', 'mark' ),
					),
				)
			)
		)
	);

	return $metaboxes;
}

add_filter( 'cs_metabox_options', 'mark_section_mission_metabox' );