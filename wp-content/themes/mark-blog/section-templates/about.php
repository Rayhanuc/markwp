<?php
global $mark_section;
$mark_section_meta = get_post_meta( $mark_section['section'], 'mark-section-about', true );
?>
<!-- about section start -->
<section id="<?php echo get_post_field('post_name',$mark_section['section']); ?>" class=" parallax base-gradient light-txt"
         style="background-image: url('<?php echo get_template_directory_uri(); ?>/assets/img/parallax.jpg');">
    <div class="container-full">
        <div class="row">
            <div class="col-md-6 text-center space-3 align-self-center">
                <h5 class="text-uppercase letter-space-2">
					<?php echo esc_html( $mark_section_meta['sub-heading'] ); ?>
                </h5>
            </div>
            <div class="col-md-6 space-3 pl-5 dark-bg-opacity">
                <div class="row">
                    <div class="col-lg-8 col-11">
                        <h2 class="text-light mb-3">
							<?php echo esc_html( $mark_section_meta['heading'] ); ?>
                        </h2>

						<?php echo apply_filters( 'the_content', $mark_section_meta['about-description'] ); ?>
						<?php
						if ( '1' == $mark_section_meta['about-button-display'] ):
							?>
                            <a href="<?php echo esc_url( $mark_section_meta['about-button-url'] ) ?>"
                               class="btn btn-primary-solid"><?php echo esc_html( $mark_section_meta['about-button-label'] ) ?></a>
						<?php
						endif;
						?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- about section end -->