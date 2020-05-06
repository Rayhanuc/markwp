<?php
/**
 * The template for displaying comments
 *
 * This is the template that displays the area of the page that contains both the current comments
 * and the comment form.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package mark
 */

/*
 * If the current post is protected by a password and
 * the visitor has not yet entered the password we will
 * return early without loading the comments.
 */
if ( post_password_required() ) {
	return;
}
?>

<section class="space-2 section-gray">
    <div class="comments">
        <div class="container">
            <div class="row justify-content-md-center ">
                <div class="col-md-10">
                    <!--section title-->

                    <ul>
						<?php
						wp_list_comments();
						?>
                    </ul>

                    <div class="section-title text-center">
                        <h2><?php _e('Leave Your Comment','mark') ?></h2>
                    </div>
                    <!--section title-->

					<?php
					$mark_comment_fields = array();
					$mark_name_field_placeholder = __('Name','mark');
					$mark_email_field_placeholder = __('Email','mark');
					$mark_url_field_placeholder = __('Website','mark');
					$mark_comment_field_placeholder = __('Comment','mark');
					$mark_send_field_placeholder = __('Send','mark');
					$mark_comment_fields['author']=<<<EOD
<div class="row">
	<div class=" col-md-6">
		<div class="form-group">
			<input type="text" id="author" name="author"  class="form-control" placeholder="{$mark_name_field_placeholder}*" required="">
		</div>
	</div>
EOD;
					$mark_comment_fields['email'] = <<<EOD
	<div class=" col-md-6">
		<div class="form-group ">
			<input type="email" id="email" name="email" class="form-control" placeholder="{$mark_email_field_placeholder}*" required="">
		</div>
	</div>
</div>
EOD;
					$mark_comment_fields['url'] = <<<EOD
<div class="form-group">
	<div class="controls">
		<input type="text" id="url" name="url" class="form-control" placeholder="{$mark_url_field_placeholder}" required="">
	</div>
</div>
EOD;
					$mark_comment_field = <<<EOD
<div class="form-group">
	<div class="controls">
        <textarea id="comment" name="comment" rows="4" placeholder="{$mark_comment_field_placeholder}*" class="form-control"
                  required=""></textarea>
	</div>
</div>
EOD;
					$mark_comment_submit_button = <<<EOD
<div class="text-center mt-md-5">
	<button type="submit" class="btn btn-danger">{$mark_send_field_placeholder}</button>
</div>
EOD;

					$mark_comment_form_arguments = array(
						'fields'=>$mark_comment_fields,
						'comment_field'=>$mark_comment_field,
						'submit_button'=>$mark_comment_submit_button,
						'class_form'=>'comments-form text-left',
						'comment_notes_before'=>'<p></p>',
						'comment_notes_after'=>'<p>'.__('Your email address will not be published. Required fields are marked','mark').' *</p>',
						'title_reply'=>''
					);

					comment_form($mark_comment_form_arguments);
					?>
                </div>
            </div>
        </div>
    </div>
</section>