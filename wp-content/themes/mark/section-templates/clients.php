<?php
global $mark_section;
$mark_section_meta = get_post_meta( $mark_section['section'], 'mark-clients-section', true );
$mark_clients = $mark_section_meta['clients'];
if(count($mark_clients)>0) :
?>



<!-- clients section start -->
<section id="<?php echo get_post_field( 'post_name', $mark_section['section']) ; ?>" class="client-section">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="clients-logo">
                    <?php
                    foreach($mark_clients as $mark_client) :
                        $mark_client_logo = wp_get_attachment_image_src($mark_client['logo'], 'mark-client-logo');
                        // print_r($mark_client_logo);

                    ?>
                    <a target="_blank" href="<?php echo esc_url( $mark_client['url'] ); ?>" class="client-item"><img src="<?php  echo esc_url($mark_client_logo[0]); ?>" alt="<?php echo esc_attr( $mark_client['title'] ); ?>"></a>
                    <?php
                        endforeach;
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>

<?php endif; ?>
<!-- clients section end -->