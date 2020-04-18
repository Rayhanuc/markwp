<?php

function mark_section_services_metabox($metaboxes){

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
    }else if('services' != $section_meta['section-type']) {
        return $metaboxes;
    }

    $metaboxes[] = array(
        'id' => 'mark-services-section',
        'title' => __('Section Type', 'mark'),
        'post_type' => 'section',
        'context' => 'normal',
        'priority' => 'default',
        'sections' => array(
            array(
                'name' => 'mark-services',
                'icon' => 'fa fa-image',
                'fields' => array(
                    array(
                        'id' => 'section-heading',
                        'type' => 'text',
                        'title' => __('Section Heading', 'mark'),
                        'default' => __('Services', 'mark'),
                    ),
                    array(
                        'id' => 'services',
                        'type' => 'group',
                        'title' => __('Services', 'mark'),
                        'button_title' => __('New Service', 'mark'),
                        'accordion_title' => __('Add New Service', 'mark'),
                        'fields' => array(
                            array(
                                'id' => 'heading',
                                'type' => 'text',
                                'title' => __('Service Heading', 'mark'),
                            ), 
                            array(
                                'id' => 'icon',
                                'type' => 'text',
                                'title' => __('Service Icon', 'mark'),
                            ),
                            array(
                                'id' => 'description',
                                'type' => 'textarea',
                                'title' => __('Service Description', 'mark'),
                            ),                            
                        )
                    ),
                )
            )
        )
    );
    return $metaboxes;
}
add_filter('cs_metabox_options', 'mark_section_services_metabox');