<!--hero section start-->

<?php
global $mark_section;
$mark_section_meta = get_post_meta( $mark_section['section'], 'mark-section-banner', true );
$mark_banner_image_id = $mark_section_meta['image'];

if ($mark_banner_image_id) {
    $mark_banner_image = wp_get_attachment_image_src($mark_banner_image_id, 'mark-fullsize');
}else {
    $mark_banner_image = array(get_template_directory_uri().'/assets/img/banner.jpg');
}


?>


<div id="home">
    <section id="<?php echo get_post_field( 'post_name', $mark_section['section']) ; ?>" class="hero js_full_height base-gradient " style="background-image: url('<?php echo esc_url($mark_banner_image[0]);?>');">
        <div class="arrow-bottom-shape"> </div>
        <div class="hero-content light-txt text-center">
            <div class="container">
                <div class="row justify-content-md-center">
                    <div class="col-md-10" data-wow-duration="2s" data-wow-delay="1s">
                        <h1 class="hero-title">
                            <?php echo esc_html( $mark_section_meta['heading'] ); ?>
                        </h1>
                        <div class="hero-sub-title">
                            <?php echo esc_html( $mark_section_meta['sub-heading'] ); ?>
                        </div>
                        <div class="hero-action">
                            <!--<a href="#" class="btn btn-primary-solid">our uniqueness</a>-->
                            <a href="<?php echo esc_url( $mark_section_meta['button-one-url'] ); ?>" class="btn btn-light-solid">
                                <?php echo esc_html( $mark_section_meta['button-one-label'] ); ?>
                                
                            </a>
                            <a href="<?php echo esc_url( $mark_section_meta['button-two-url'] ); ?>" class="btn btn-light-border">
                                <?php echo esc_html( $mark_section_meta['button-two-label'] ); ?>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<!--hero section end-->