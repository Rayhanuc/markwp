<?php
global $mark_section;
$mark_section_meta = get_post_meta( $mark_section['section'], 'mark-features-section', true );
?>
<!--feature section start-->
<section  id="<?php echo get_post_field('post_name',$mark_section['section']); ?>" class="space-3 section-gray">
    <div class="arrow-top-shape"></div>
    <div class="container">
        <div class="row justify-content-md-center">

			<?php
			if ( isset( $mark_section_meta['features'] ) ):
				foreach ( $mark_section_meta['features'] as $mark_feature ):
					$mark_feature_icon = wp_get_attachment_image_src( $mark_feature['icon'] );
					?>
                    <div class="col-lg-4 col-md-6">
                        <div class="feature-list text-center">
                            <div class="feature-list-img">
                                <img src="<?php echo esc_url( $mark_feature_icon[0] ); ?>"
                                     alt="<?php echo esc_attr( $mark_feature['heading'] ) ?>">
                            </div>
                            <h3 class="feature-title">
								<?php echo esc_html( $mark_feature['heading'] ) ?>
                            </h3>
                            <div class="feature-info">
								<?php
								echo apply_filters( 'the_content', $mark_feature['description'] );
								?>
                            </div>
                        </div>
                    </div>
				<?php
				endforeach;
			endif;
			?>

        </div>
    </div>
</section>
<!--feature section end-->