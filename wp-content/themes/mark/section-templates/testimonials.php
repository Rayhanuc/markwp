
<?php
global $mark_section;
$mark_section_meta = get_post_meta( $mark_section['section'], 'mark-testimonials-section', true );

?>



<!--testimonial section start-->
<section id="<?php echo get_post_field( 'post_name', $mark_section['section']) ; ?>" class="space-3 space-adjust" id="testimonial">
    <div class="container">
        <div class="row justify-content-md-center">
            <div class="col-md-8">
                <div class="section-title text-center">
                    <h2 class="title">
                        <?php 
                            if (isset($mark_section_meta['section-heading'])) {
                                echo esc_html($mark_section_meta['section-heading'],'markwp');
                            }
                        ?>
                    </h2>
                </div>
            </div>


            <?php 
            if(isset($mark_section_meta['testimonials'])) :
            ?>
            <div class="col-md-8">
                <div id="js_testimonial" class="owl-carousel owl-theme text-center testimonial-wrapper">
                    <?php 
                    foreach ($mark_section_meta['testimonials'] as $mark_testimonial) :
                        $mark_testimonial_image_id = $mark_testimonial['photo'];
                        if ($mark_testimonial_image_id) :
                            $mark_testimonial_image = wp_get_attachment_image_src( $mark_testimonial_image_id);
                            $mark_testimonial_image_markup = sprintf("<img class='testimonial-thumb' src='%s'/>", esc_url($mark_testimonial_image[0]));
                        else:
                            $mark_testimonial_image_markup = '';
                        endif;
                    ?>

                    <div class="item mb-5" data-dot="<?php echo esc_attr($mark_testimonial_image_markup) ; ?>">
                        <img class="mb-5 quote" src="<?php echo get_template_directory_uri();?>/assets/img/quote.svg" alt=""/>
                        <?php echo apply_filters( 'the_content', $mark_testimonial['testimonial']); ?>
                    </div>

                    <?php
                    endforeach;
                    ?>

                </div>
            </div>
            <?php
            endif; 
            ?>

        </div>
    </div>
</section>
<!-- testimonial section end-->