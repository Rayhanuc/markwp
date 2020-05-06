<?php
global $mark_section;
$mark_section_meta = get_post_meta( $mark_section['section'], 'mark-portfolio-section', true );
$mark_images       = $mark_section_meta['portfolio'];
$mark_filters      = array();
if ( count( $mark_images ) > 0 ) {
	foreach ( $mark_images as $mark_image ) {
		$mark_temp_filters = explode( ",", $mark_image['filter'] ); //Filter1, Filter2
		foreach ( $mark_temp_filters as $mark_temp_filter ) {
			$mark_filters[ strtolower( trim( $mark_temp_filter ) ) ] = $mark_temp_filter;
		}
	}

}

?>
<!--portfolio section start-->
<section  id="<?php echo get_post_field('post_name',$mark_section['section']); ?>" class="space-3 space-adjust" id="portfolio">
    <div class="section-title text-center">
        <h2 class="title">
			<?php echo esc_html( $mark_section_meta['heading'] ); ?>
        </h2>
    </div>
    <!--portfolio-->
    <div class="container">

        <div class="text-center">
            <ul class="portfolio-filter">
                <li class="active"><a href="#" data-filter="*"> All</a></li>
				<?php
				foreach ( $mark_filters as $mark_filter ):
					?>
                    <li>
                        <a href="#" data-filter=".<?php echo esc_attr( trim(strtolower( $mark_filter )) ); ?>">
							<?php echo esc_html( $mark_filter ); ?>
                        </a>
                    </li>
				<?php
				endforeach;
				?>
            </ul>
        </div>

		<?php
		if ( count( $mark_images ) > 0 ):
			?>
            <div class="row portfolio portfolio-gallery column-3 gutter "><!--portfolio grid option col-2 - col-6 -->
				<?php
				foreach ( $mark_images as $mark_image ):
					$mark_image_details_full = wp_get_attachment_image_src( $mark_image['image'], 'large' );
					$mark_image_details_medium = wp_get_attachment_image_src( $mark_image['image'], 'medium' );
					?>
                    <div class="portfolio-item <?php echo esc_attr( strtolower( str_replace( ",", " ", $mark_image['filter'] ) ) ); ?> ">
                        <a href="<?php echo esc_url( $mark_image_details_full[0] ); ?>"
                           class="thumb popup-gallery" title="<?php echo esc_attr( $mark_image['title'] ) ?>">
                            <img src="<?php echo esc_url( $mark_image_details_medium[0] ); ?>"
                                 alt="<?php echo esc_attr( $mark_image['title'] ) ?>">
                            <div class="portfolio-hover">
                                <div class="portfolio-description">
                                    <h4 class="mb-1"><?php echo esc_html( $mark_image['title'] ) ?></h4>
                                    <p><?php echo esc_html( $mark_image['filter'] ); ?></p>
                                </div>
                            </div>
                        </a>
                    </div>
				<?php
				endforeach;
				?>
            </div>
		<?php
		endif;
		?>

    </div>
    <!--portfolio-->
</section>
<!--portfolio section end-->