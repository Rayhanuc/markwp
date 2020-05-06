<!-- All data will come frome blog -->
<?php
    $mark_posts = get_posts(array(
        'posts_per_page' => 1,
        'orderby' => 'date',
        'order' => 'DESE',
        'status' => 'publish'
    ));

/*    echo "<pre>";
    print_r($mark_posts);
    echo "</pre>";*/

    if(count($mark_posts)>0) :
        $mark_thumbnail = get_the_post_thumbnail_url( $mark_posts[0], 'mark-landscape-one' );
?>



<!--blog section start-->
<section id="<?php echo get_post_field( 'post_name', $mark_section['section']) ; ?>" class="blog-block" id="blog">
    <!--<div class="">-->
    <div class="row">
        <div class="col-md-6 align-self-center">

            <div class="img-block-txt">
                <div class="section-title">
                    <h2 class="title ">
                        <?php _e('Blog','markwp') ; ?>
                    </h2>
                </div>
                <h2 class="mb-1">
                    <a href="<?php echo get_the_permalink( $mark_posts[0] ); ?>">
                        <?php echo esc_html($mark_posts[0]->post_title); ?>
                    </a>
                </h2>
                <div class="meta mb-4">
                    <a href="<?php echo get_the_permalink( $mark_posts[0] ); ?>" class="date"><?php echo get_the_date('',$mark_posts[0]); ?></a>
                    By
                    <a href="#"> <?php echo get_the_author_meta( 'display_name', $mark_posts[0]->post_author ); ?></a>
                </div>
                <p>
                    <?php echo apply_filters( 'the_content',$mark_posts[0]->post_excerpt ); ?>
                </p>
                <a href="<?php echo get_the_permalink( get_option('page_for_posts') ); ?>" class="btn-link">
                    <?php _e('View All Blog Post','markwp') ; ?>
                </a>
            </div>
        </div>
        <div class="col-md-6 base-gradient blog-bg-height" style="background: url('<?php echo get_template_directory_uri();?>/assets/img/b-img.jpg') center center / cover no-repeat; ">
            <img src="<?php if($mark_thumbnail) echo esc_url($mark_thumbnail); ?>" alt=""/>
        </div>
    </div>
    <!--</div>-->
</section>
<!--blog section end-->

<?php endif; ?>