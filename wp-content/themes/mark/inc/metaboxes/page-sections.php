<?php

function mark_page_sections_metabox($metaboxes){
    $page_id = 0;

    if (isset($_REQUEST['post']) || isset($_REQUEST['post_ID'])) {
        $page_id = empty($_REQUEST['post_ID']) ? $_REQUEST['post'] : $_REQUEST['post_ID'];
    }

    $current_page_templat = get_post_meta($page_id,'_wp_page_template', true);
    if('page-templates/landing.php' != $current_page_templat){
        return $metaboxes;
    }



    $metaboxes[] = array(
        'id' => 'mark-page-section',
        'title' => __('Section Type', 'mark'),
        'post_type' => 'page',
        'context' => 'normal',
        'priority' => 'default',
        'sections' => array(
            array(
                'name' => 'mark-page-sections-section',
                'icon' => 'fa fa-image',
                'fields' => array(
                    array(
                        'id' => 'sections',
                        'type' => 'group',
                        'title' => __('Select Sections', 'mark'),
                        'button_title' => __('New Section', 'mark'),
                        'accordion_title' => __('Add New Section', 'mark'),
                        'fields' => array(
                            array(
                                'id' => 'section',
                                'type' => 'select',
                                'title' => __('Select Section', 'mark'),
                                'options' => 'post',
                                'query_args' => array(
                                    'post_type' => 'section',
                                    'posts_per_page' => -1
                                )
                            )                            
                        )
                    ),
                )
            )
        )
    );
    return $metaboxes;
}
add_filter('cs_metabox_options', 'mark_page_sections_metabox');