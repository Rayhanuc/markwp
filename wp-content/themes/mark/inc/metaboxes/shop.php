<?php

function mark_section_shop_metabox($metaboxes){

    $section_id = 0;

    if (isset($_REQUEST['post']) || isset($_REQUEST['post_ID'])) {
        $section_id = empty($_REQUEST['post_ID']) ? $_REQUEST['post'] : $_REQUEST['post_ID'];
    }

    if('section' != get_post_type($section_id)) {
        return $metaboxes;
    }

    $section_meta = get_post_meta($section_id, 'mark-section-type', true);
    if (!$section_meta) {
        return $metaboxes;
    }else if('shop' != $section_meta['section-type']) {
        return $metaboxes;
    }


    $metaboxes[] = array(
        'id' => 'mark-section-shop',
        'title' => __('Shop Settings', 'mark'),
        'post_type' => 'section',
        'context' => 'normal',
        'priority' => 'default',
        'sections' => array(
            array(
                'name' => 'mark-section-type-shop',
                'icon' => 'fa fa-image',
                'fields' => array(
                    array(
                        'id' => 'heading',
                        'type' => 'text',
                        'title' => __('Shop Heading', 'mark'),
                        'default' => __('Our Shop', 'mark'),
                    ),
                    array(
                        'id' => 'number-of-products',
                        'type' => 'text',
                        'title' => __('Number of Products', 'mark'),
                        'default' => 6,
                    ),
                    array(
                        'id' => 'link-label',
                        'type' => 'text', // full form is: What you see is what you get
                        'title' => __('Shop Link Label', 'mark'), 
                        'default' => __('Go To Shop', 'mark'), 
                    ),
                    array(
                        'id' => 'link-url',
                        'type' => 'text', // full form is: What you see is what you get
                        'title' => __('Shop Page URL', 'mark'), 
                    )
                )
            )
        )
    );
    return $metaboxes;
}
add_filter('cs_metabox_options', 'mark_section_shop_metabox');