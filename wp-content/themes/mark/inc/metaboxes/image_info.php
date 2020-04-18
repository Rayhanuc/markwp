<?php

function mark_section_imageinfo_metabox($metaboxes){

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
    }else if('image_info' != $section_meta['section-type']) {
        return $metaboxes;
    }

    $metaboxes[] = array(
        'id' => 'mark-section-imageinfo',
        'title' => __('Section Settings', 'mark'),
        'post_type' => 'section',
        'context' => 'normal',
        'priority' => 'default',
        'sections' => array(
            array(
                'name' => 'mark-section-type-imageinfo',
                'icon' => 'fa fa-image',
                'fields' => array(
                    array(
                        'id' => 'heading',
                        'type' => 'text',
                        'title' => __('Image info Heading', 'mark'),
                    ),
                    array(
                        'id' => 'description',
                        'type' => 'textarea',
                        'title' => __('Image info Description', 'mark'), 
                    ),
                    array(
                        'id' => 'image',
                        'type' => 'image', // full form is: What you see is what you get
                        'title' => __('Image', 'mark'), 
                    )
                )
            )
        )
    );
    return $metaboxes;
}
add_filter('cs_metabox_options', 'mark_section_imageinfo_metabox');