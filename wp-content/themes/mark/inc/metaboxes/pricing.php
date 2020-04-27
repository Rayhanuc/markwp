<?php

function mark_section_pricing_metabox($metaboxes){

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
    }else if('pricing' != $section_meta['section-type']) {
        return $metaboxes;
    }

    $metaboxes[] = array(
        'id' => 'mark-pricing-section',
        'title' => __('Section Type', 'mark'),
        'post_type' => 'section',
        'context' => 'normal',
        'priority' => 'default',
        'sections' => array(
            array(
                'name' => 'mark-pricing',
                'icon' => 'fa fa-image',
                'fields' => array(
                    array(
                        'id' => 'heading',
                        'type' => 'text',
                        'title' => __('Heading', 'mark'),
                    ),
                    array(
                        'id' => 'sub-heading',
                        'type' => 'text',
                        'title' => __('Sub Heading', 'mark'),
                    ),
                    array(
                        'id' => 'plans',
                        'type' => 'group',
                        'title' => __('Plance', 'mark'),
                        'button_title' => __('New Plan', 'mark'),
                        'accordion_title' => __('Add New Plan', 'mark'),
                        'fields' => array(
                            array(
                                'id' => 'heading',
                                'type' => 'text',
                                'title' => __('Title', 'mark'),
                            ),
                            array(
                                'id' => 'price',
                                'type' => 'text',
                                'title' => __('Pricing', 'mark'),
                            ),
                            array(
                                'id' => 'tenure',
                                'type' => 'text',
                                'title' => __('Tenure', 'mark'),
                            ), 
                            array(
                                'id' => 'options',
                                'type' => 'textarea',
                                'title' => __('Options', 'mark'),
                            ), 
                            array(
                                'id' => 'button-label',
                                'type' => 'text',
                                'title' => __('Button Label', 'mark'),
                                'default' => __('Purchase Now', 'mark'),
                            ),  
                            array(
                                'id' => 'button-url',
                                'type' => 'text',
                                'title' => __('Button URL', 'mark'),
                            ),   
                            array(
                                'id' => 'recommended',
                                'type' => 'switcher',
                                'title' => __('Recommended', 'mark'),
                            ),   
                            array(
                                'id' => 'recommended-label',
                                'type' => 'text',
                                'title' => __('Recommended Label', 'mark'),
                                'default' =>  __('Recommended', 'mark'),
                                'dependency' => array('recommended','==','1')
                            ),                            
                        )
                    ),
                )
            )
        )
    );
    return $metaboxes;
}
add_filter('cs_metabox_options', 'mark_section_pricing_metabox');