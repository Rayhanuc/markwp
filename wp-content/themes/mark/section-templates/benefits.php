<?php
global $mark_section;
$mark_section_meta = get_post_meta( $mark_section['section'], 'mark-section-benefits', true );
$mark_benefit_image_id = $mark_section_meta['image'];

if ($mark_benefit_image_id) {
    $mark_benefit_image = wp_get_attachment_image_src($mark_benefit_image_id, 'mark-fullsize');
}else {
    $mark_benefit_image = array(get_template_directory_uri().'/assets/img/diagram.png');
}
?>


<!--block section start-->
    <section class="space-3 section-gray">
        <div class="container">
            <div class="row">

                <div class="col-md-6">
                    <div class="section-title mb-4">
                        <h2 class="title">
                            <?php 
                                if (isset($mark_section_meta['heading'])) {
                                    echo esc_html($mark_section_meta['heading'], 'markwp');
                                }
                            ?>
                        </h2>
                    </div>
                    <?php
                        if (isset($mark_section_meta['benefits-description'])) {
                            echo apply_filters( 'the_content', $mark_section_meta['benefits-description']);
                        }
                        if(isset($mark_section_meta['benefits']) && is_array($mark_section_meta['benefits'])) :
                            foreach ($mark_section_meta['benefits'] as $mark_benefit) :
                                $mark_benefit_icon = isset($mark_benefit['benefits-icon']) && $mark_benefit['benefits-icon'] != '' ? $mark_benefit['benefits-icon'] : 'fa-check';

                    ?>
                        <ul class="list-unstyled">
                            <li><i class="fa <?php echo esc_attr($mark_benefit_icon); ?> pr-2 text-purple"></i>
                                <?php 
                                    if (isset($mark_benefit['benefits'])) {
                                        echo esc_html($mark_benefit['benefits']);
                                    }
                                ?>
                            </li>
                            
                        </ul>

                    <?php 
                            endforeach;
                        endif;
                    ?>
                </div>

                <div class="col-md-6 order-md-first">
                    <img class="img-fluid mb-mt-0 mt-4" src="<?php echo esc_url($mark_benefit_image[0]);?>" alt=""/>
                </div>

            </div>
        </div>
        <div class="arrow-bottom-shape pt-5"> </div>
    </section>
    <!--block section end-->