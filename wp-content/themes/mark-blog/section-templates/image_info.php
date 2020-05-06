<?php
global $mark_section;
$mark_section_meta = get_post_meta( $mark_section['section'], 'mark-section-imageinfo', true );
$mark_section_image_id = $mark_section_meta['image'];
if ( $mark_section_image_id ) :
	$mark_section_image        = wp_get_attachment_image_src( $mark_section_image_id,'large' );
else:
	$mark_section_image ='';
endif;
?>
<!--block section start-->
<section  id="<?php echo get_post_field('post_name',$mark_section['section']); ?>" class="bg-dark light-txt">
	<!--<div class="">-->
	<div class="row">
		<div class="col-md-6 align-self-center">
			<div class="img-block-txt">
				<h2 class="mb-3">
					<?php echo esc_html( $mark_section_meta['heading'] ); ?>
				</h2>
				<?php echo apply_filters( 'the_content', $mark_section_meta['description'] ); ?>
			</div>
		</div>
		<div class="col-md-6 block-bg-height" style="background: url('<?php echo esc_url($mark_section_image[0]); ?>') center center / cover no-repeat; "> </div>
	</div>
	<!--</div>-->
</section>
<!--block section end-->