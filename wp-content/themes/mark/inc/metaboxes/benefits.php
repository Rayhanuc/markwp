<?php

function mark_section_benefits_metabox($metaboxes){

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
    }else if('benefits' != $section_meta['section-type']) {
        return $metaboxes;
    }


    $metaboxes[] = array(
        'id' => 'mark-section-benefits',
        'title' => __('Benefits Settings', 'mark'),
        'post_type' => 'section',
        'context' => 'normal',
        'priority' => 'default',
        'sections' => array(
            array(
                'name' => 'mark-section-type-benefits',
                'icon' => 'fa fa-image',
                'fields' => array(
                    array(
                        'id' => 'image',
                        'type' => 'image',
                        'title' => __('Section Image', 'mark'), 
                    ),
                    array(
                        'id' => 'heading',
                        'type' => 'text',
                        'title' => __('Benefits Heading', 'mark'),
                        'default' => __('Benefits', 'mark'),                       
                    ),
                    array(
                        'id' => 'benefits-description',
                        'type' => 'textarea', // "wysiwyg" full form is: What you see is what you get
                        'title' => __('Benefits Description', 'mark'), 
                    ),
                    array(
                        'id' => 'benefits',
                        'type' => 'group',
                        'title' => __('Benefits', 'mark'),
                        'button_title' => __('Create New Benefit', 'mark'),
                        'accordion_title' => __('Add New Benefit', 'mark'),
                        'fields' => array(
                            array(
                                'id' => 'benefits',
                                'type' => 'text',
                                'title' => __('Benefit Heading', 'mark'),
                            ), 
                            array(
                                'id' => 'benefits-icon',
                                'type' => 'text',
                                'title' => __('Select Benefit Icon', 'mark'),
                                'default' => 'fa-check',
                                'desc' => __('Write Code only "fa-image"', 'mark'),
                            ),                          
                        )
                    ),
                )
            )
        )
    );
    return $metaboxes;
}
add_filter('cs_metabox_options', 'mark_section_benefits_metabox');