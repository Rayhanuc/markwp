<?php

function mark_section_type_metabox($metaboxes){
    $metaboxes[] = array(
        'id' => 'mark-section-type',
        'title' => __('Section Type', 'mark'),
        'post_type' => 'section',
        'context' => 'normal',
        'priority' => 'default',
        'sections' => array(
            array(
                'name' => 'mark-section-type-section',
                'icon' => 'fa fa-image',
                'fields' => array(
                    array(
                        'id' => 'section-type',
                        'type' => 'select',
                        'title' => __('Select Section Type', 'mark'),
                        'options' => array(
                            'banner' => __('Banner', 'mark'),
                            'mission' => __('Mission', 'mark'),
                            'info' => __('Info', 'mark'),
                            'about' => __('About', 'mark'),
                            'services' => __('Services', 'mark'),
                            'benefits' => __('Benefits', 'mark'),
                            'testimonials' => __('Testimonials', 'mark'),
                            'image_info' => __('Image info', 'mark'),
                            'counter' => __('Counter', 'mark'),
                            'cta' => __('Call To Action', 'mark'),
                            'portfilio' => __('Portfilio', 'mark'),
                            'pricing_plan' => __('Pricing plan', 'mark'),
                            'shop' => __('Shop', 'mark'),
                            'blog' => __('Blog', 'mark'),
                            'clients' => __('Clients', 'mark'),
                            'subscription' => __('Subscription', 'mark'),
                            'contact' => __('Contact', 'mark'),
                        )
                    )
                )
            )
        )
    );
    return $metaboxes;
}
add_filter('cs_metabox_options', 'mark_section_type_metabox');