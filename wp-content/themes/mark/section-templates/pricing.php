<?php
global $mark_section;
$mark_section_meta = get_post_meta( $mark_section['section'], 'mark-pricing-section', true );
$mark_pricing_plans = $mark_section_meta['plans'];
?>

<!-- pricing section start -->
<section id="<?php echo get_post_field( 'post_name', $mark_section['section']) ; ?>" class="price-table-section" id="pricing">
    <div class="space-3 parallax price-bg-height" style="background-image: url('<?php echo get_template_directory_uri();?>/assets/img/parallax.jpg');">
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-md-8">
                    <div class="section-title text-center light-txt">
                        <h2 class="title ">
                            <?php 
                                if (isset($mark_section_meta['heading'])) {
                                    echo esc_html($mark_section_meta['heading'], 'markwp');
                                }
                            ?>
                        </h2>
                        <div class="sub-title">
                            <?php 
                                if (isset($mark_section_meta['sub-heading'])) {
                                    echo esc_html($mark_section_meta['sub-heading'], 'markwp');
                                }
                            ?>
                        </div>
                    </div>
                </div>
            </div>

            <?php if (count($mark_pricing_plans)>0): ?>
                
            <div class="row">
                <?php 
                    $mark_recommended = false;
                    foreach($mark_pricing_plans as $mark_pricing_plan):
                        $mark_recommended = isset($mark_pricing_plan['recommended'])? $mark_pricing_plan['recommended']:0;
                ?>
                <div class="col-lg-4 col-md-6">
                    <div class="price-list text-center <?php if($mark_recommended): 
                    echo 'featured-price';
                    endif;
                     ?>">

                        <?php if ($mark_recommended): ?>
                        <!--only for featured price-->
                        <div class="ribbon">
                            <img src="<?php echo get_template_directory_uri();?>/assets/img/ribbon.png" srcset="<?php echo get_template_directory_uri();?>/assets/img/ribbon@2x.png 2x" alt="">
                        </div>

                            
                        <div class="recommended">
                            <?php echo esc_html($mark_pricing_plan['recommended-label']) ; ?>
                        </div>
                        <!--only for featured price-->
                        <?php endif ?>

                        <h2 class="price-title">
                            <?php echo esc_html($mark_pricing_plan['heading']) ; ?>
                        </h2>
                        <div class="price-value">
                            <sup><?php _e( '$', 'markwp' ) ?></sup> <?php echo esc_html($mark_pricing_plan['price']) ; ?>
                            <div class="price-duration">
                                <?php 
                                _e('Per ','markwp');
                                echo esc_html($mark_pricing_plan['tenure']) ;
                                ?>
                            </div>
                        </div>
                        <ul class="list-unstyled price-info-list">
                            <?php 
                            $mark_plan_options = explode("\n",$mark_pricing_plan['options']);
                            // print_r($mark_plan_options);
                            foreach ($mark_plan_options as $mark_plan_option) :
                                ?>
                            <li>- <?php echo esc_html($mark_plan_option) ; ?> </li>
                            <?php
                            endforeach;
                            ?>
                        </ul>
                        <?php if (!empty($mark_pricing_plan['button-label'])): ?>
                            
                        <a href="#" class="btn <?php if($mark_recommended) :
                        echo 'btn-primary-solid';
                        else:
                        echo 'btn-gray-border';

                        endif; ?>">
                            <?php echo esc_html($mark_pricing_plan['button-label']) ?>
                        </a>
                        <?php endif ?>
                    </div>
                </div>
                <?php
                endforeach;
                ?>
            </div>
            <?php endif ?>

        </div>
    </div>
</section>
<!-- pricing section end -->