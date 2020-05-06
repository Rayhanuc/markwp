<?php

function mark_section_subscription_metabox( $metaboxes ) {

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
	} else if ( 'subscription' != $section_meta['section-type'] ) {
		return $metaboxes;
	}

	$metaboxes[] = array(
		'id'        => 'mark-subscriptions-section',
		'title'     => __( 'Subscription Settings', 'mark' ),
		'post_type' => 'section',
		'context'   => 'normal',
		'priority'  => 'default',
		'sections'  => array(
			array(
				'name'   => 'mark-section-type-subscription',
				'icon'   => 'fa fa-image',
				'fields' => array(

					array(
						'id'      => 'heading',
						'type'    => 'text',
						'title'   => __( 'Heading', 'mark' ),
						'default'=>__( 'Subscribe Now', 'mark' ),
					),array(
						'id'      => 'url',
						'type'    => 'text',
						'title'   => __( 'Mailchimp Form URL', 'mark' ),
					),array(
						'id'      => 'button-label',
						'type'    => 'text',
						'title'   => __( 'Button Label', 'mark' ),
						'default'=>__( 'Subscribe', 'mark' ),
					),

				)
			)
		)
	);

	return $metaboxes;
}

add_filter( 'cs_metabox_options', 'mark_section_subscription_metabox' );