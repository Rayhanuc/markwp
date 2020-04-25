<?php

function mark_section_portfolio_metabox($metaboxes){

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
    }else if('portfolio' != $section_meta['section-type']) {
        return $metaboxes;
    }

    $metaboxes[] = array(
        'id' => 'mark-portfolio-section',
        'title' => __('Section Type', 'mark'),
        'post_type' => 'section',
        'context' => 'normal',
        'priority' => 'default',
        'sections' => array(
            array(
                'name' => 'mark-portfolio',
                'icon' => 'fa fa-image',
                'fields' => array(
                    array(
                        'id' => 'heading',
                        'type' => 'text',
                        'title' => __('Portfolio Heading', 'mark'),
                        'default' => __('Our Works', 'mark'),                       
                    ),
                    array(
                        'id' => 'portfolio',
                        'type' => 'group',
                        'title' => __('Portfolio', 'mark'),
                        'button_title' => __('New Image', 'mark'),
                        'accordion_title' => __('Add New Image', 'mark'),
                        'fields' => array(
                            array(
                                'id' => 'title',
                                'type' => 'text',
                                'title' => __('Image Title', 'mark'),
                            ), 
                            array(
                                'id' => 'filter',
                                'type' => 'text',
                                'title' => __('Fisters', 'mark'),
                                'help' => __('Comma Seperated Texts', 'mark'),
                            ),  
                            array(
                                'id' => 'image',
                                'type' => 'image',
                                'title' => __('Image', 'mark'),
                            ),                           
                        )
                    ),
                )
            )
        )
    );
    return $metaboxes;
}
add_filter('cs_metabox_options', 'mark_section_portfolio_metabox');