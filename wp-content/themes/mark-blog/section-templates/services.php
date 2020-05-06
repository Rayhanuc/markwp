<?php
global $mark_section;
$mark_section_meta = get_post_meta( $mark_section['section'], 'mark-services-section', true );
?>
<!--service section start-->
<section  id="<?php echo get_post_field('post_name',$mark_section['section']); ?>" class="space-3" id="services">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="section-title text-center">
                    <h2 class="title">
						<?php echo esc_html( $mark_section_meta['section-heading'] ); ?>
                    </h2>
                </div>
            </div>

			<?php
			if ( isset( $mark_section_meta['services'] ) ):
				foreach ( $mark_section_meta['services'] as $mark_service ):
					?>
                    <div class="col-lg-4 col-md-6 col-sm-6 col-gap">
                        <div class="services-list text-left">
                            <div class="services-icon">
                                <i class="bi <?php echo esc_attr($mark_service['icon']); ?>"></i>
                            </div>
                            <h4 class="services-title">
                                <?php echo esc_html($mark_service['heading']); ?>
                            </h4>
                            <p class="services-info">
	                            <?php echo esc_html($mark_service['description']); ?>
                            </p>
                        </div>
                    </div>
				<?php
				endforeach;
			endif;
			?>
        </div>
    </div>
</section>
<!--service section end-->