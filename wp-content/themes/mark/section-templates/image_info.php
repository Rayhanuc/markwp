<?php
global $mark_section;
$mark_section_meta = get_post_meta( $mark_section['section'], 'mark-section-imageinfo', true );

$mark_banner_image_id = $mark_section_meta['image'];

if ($mark_banner_image_id) {
    $mark_banner_image = wp_get_attachment_image_src($mark_banner_image_id, 'full');
}else {
    $mark_banner_image = array(get_template_directory_uri().'/assets/img/imgnew1.jpg');
}
?>

<!--block section start-->
<section class="bg-dark light-txt">
    <!--<div class="">-->
        <div class="row">
            <div class="col-md-6 align-self-center">
                <div class="img-block-txt">
                    <h2 class="mb-3">
                        <?php 
                            if (isset($mark_section_meta['heading'])) {
                                echo esc_html($mark_section_meta['heading'], 'markwp');
                            }
                        ?>
                    </h2>
                    <?php 
                        if (isset($mark_section_meta['description'])) {
                            echo apply_filters( 'the_content', $mark_section_meta['description']);
                        }
                    ?>
                </div>
            </div>
            <div class="col-md-6 block-bg-height" style="background: url('<?php echo esc_url($mark_banner_image[0]);?>') center center / cover no-repeat; "> </div>
        </div>
    <!--</div>-->
</section>
<!--block section end-->