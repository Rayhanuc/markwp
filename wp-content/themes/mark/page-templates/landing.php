<?php

/* 
Template Name: Mark Landing Page
 */
get_header(); 

$mark_sections = get_post_meta(get_the_ID(), 'mark-page-section', true);
// print_r($mark_sections);
if(isset($mark_sections['sections']) && is_array($mark_sections['sections'])) {
	foreach ($mark_sections['sections'] as $mark_section) {
		$mark_section_meta = get_post_meta($mark_section['section'], 'mark-section-type', true);
		$mark_sectin_type = isset($mark_section_meta['section-type']) ? $mark_section_meta['section-type']:'';
		get_template_part("section-templates/{$mark_sectin_type}");
	}
}






get_footer(); ?>