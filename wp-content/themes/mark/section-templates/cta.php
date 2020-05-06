<?php
global $mark_section;
$mark_section_meta = get_post_meta( $mark_section['section'], 'mark-section-cta', true );
$mark_cta_image_id = $mark_section_meta['image'];

if ($mark_cta_image_id) {
    $mark_cta_image = wp_get_attachment_image_src($mark_cta_image_id, 'mark-fullsize');
}else {
    $mark_cta_image = array(get_template_directory_uri().'/assets/img/parallax.jpg');
}


?>


<!-- parallax section start -->
<section id="<?php echo get_post_field( 'post_name', $mark_section['section']) ; ?>" class="space-3 parallax base-gradient" style="background-image: url('<?php echo esc_url($mark_cta_image[0]);?>');">
    <div class="arrow-bottom-shape"> </div>
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-md-8 text-center light-txt">
                <h2 class="mb-3">
                    <?php 
                        if (isset($mark_section_meta['heading'])) {
                            echo esc_html($mark_section_meta['heading'], 'markwp');
                        }
                    ?>
                </h2>
                <h5 class="text-uppercase letter-space-1">
                    <?php 
                        if (isset($mark_section_meta['sub-heading'])) {
                            echo esc_html($mark_section_meta['sub-heading'], 'markwp');
                        }
                    ?>
                </h5>

                <div class="space-3 pt-4">
                    <a href="<?php echo esc_url( $mark_section_meta['button-one-url'] ); ?>" class="btn btn-light-solid">
                        <?php if (isset($mark_section_meta['button-one-label'])) {
                            echo esc_html( $mark_section_meta['button-one-label'] );
                        } ?>
                    </a>
                    <a href="<?php echo esc_url( $mark_section_meta['button-two-url'] ); ?>" class="btn btn-light-border">
                        <?php if (isset($mark_section_meta['button-two-label'])) {
                           echo esc_html( $mark_section_meta['button-two-label'] );
                        } ?>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- parallax section end -->