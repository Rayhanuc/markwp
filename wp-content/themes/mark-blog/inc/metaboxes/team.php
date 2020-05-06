<?php

function mark_section_team_metabox( $metaboxes ) {
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
	} else if ( 'team' != $section_meta['section-type'] ) {
		return $metaboxes;
	}

	$metaboxes[] = array(
		'id'        => 'mark-team-section',
		'title'     => __( 'Team Settings', 'mark' ),
		'post_type' => 'section',
		'context'   => 'normal',
		'priority'  => 'default',
		'sections'  => array(
			array(
				'name'   => 'mark-team',
				'icon'   => 'fa fa-image',
				'fields' => array(
					array(
						'id'      => 'heading',
						'type'    => 'text',
						'title'   => __( 'Heading', 'mark' ),
						'default' => __( 'Team', 'mark' )
					),
					array(
						'id'      => 'sub-heading',
						'type'    => 'textarea',
						'title'   => __( 'Sub-Heading', 'mark' ),
					),
					array(
						'id'              => 'team',
						'type'            => 'group',
						'title'           => __( 'Team', 'mark' ),
						'button_title'    => __( 'New Team Member', 'mark' ),
						'accordion_title' => __( 'Add Team Member', 'mark' ),
						'fields'          => array(

							array(
								'id'    => 'name',
								'type'  => 'text',
								'title' => __( 'Name', 'mark' ),
							),
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
								'id'        => 'social_fields',
								'type'      => 'fieldset',
								'title'     => __( 'SocialProfiles', 'mark' ),
								'fields'    => mark_get_social_fields()
							),
						)
					),

				)
			)
		)
	);

	return $metaboxes;
}

add_filter( 'cs_metabox_options', 'mark_section_team_metabox' );