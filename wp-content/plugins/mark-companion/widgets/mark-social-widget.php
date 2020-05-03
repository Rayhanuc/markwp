<?php 

class MarkSocialIcons_Widget extends WP_Widget {
	public function __construct() {
		parent::__construct(
			'tb_social_icons', // Base ID
			__('Mark: Social Icons', 'markwp'),
			array('description' => __('Social Icons','markwp'))
		);
	}

	public function widget($args, $instance ) {
		extract($args);
		$social_icons = array(
			"facebook",
			"twitter",
			"github",
			"pinterset",
			"instagram",
			"google-plus",
			"youtube",
			"vimeo",
			"tumblr",
			"dribble",
			"flickr",
			"behance",
		);

		$title = apply_filters('widget_title', $instance['title']);

		echo wp_kses_post($before_widget);

		if ($title) {
			echo "<div class=\"widget-title\">";
			echo wp_kses_post($before_title).esc_html($title).wp_kses_post($after_title);
			echo "</div>";
		}
		?>

		<div class="<?php echo esc_attr($instance['classname']) ; ?>">
			<?php 
			foreach($social_icons as $sci) {
				$url  = trim($instance[$sci]);
				if(!empty($url)){
					if ( $sci == 'vimeo') {
						$sci = "vimeo-square";
					}
					$sci = esc_attr($sci);

					echo "<a href='".esc_url($url)."' class='".esc_attr($sci)."'><i class='fa fa-".esc_attr($sci)."'></i></a>";
				}
			}
			?>
		</div>
		<?php
		echo wp_kses_post($after_widget);
	}





	public function update($new_instace, $old_instance) {
		$instance = array();
		$instance['title'] = strip_tags($new_instace['title']);
		$instance['classname'] = strip_tags($new_instace['classname']);
		$instance['facebook'] = strip_tags($new_instace['facebook']);
		$instance['twitter'] = strip_tags($new_instace['twitter']);
		$instance['github'] = strip_tags($new_instace['github']);
		$instance['pinterset'] = strip_tags($new_instace['pinterset']);
		$instance['instagram'] = strip_tags($new_instace['instagram']);
		$instance['google-plus'] = strip_tags($new_instace['google-plus']);
		$instance['youtube'] = strip_tags($new_instace['youtube']);
		$instance['vimeo'] = strip_tags($new_instace['vimeo']);
		$instance['tumblr'] = strip_tags($new_instace['tumblr']);
		$instance['dribble'] = strip_tags($new_instace['dribble']);
		$instance['flickr'] = strip_tags($new_instace['flickr']);
		$instance['behance'] = strip_tags($new_instace['behance']);

		return $instance;
	}

	public function form($instance) {
		if(isset($instance['title'])) {
			$title = $instance['title'];
		} else {
			$title = __('Social Icons', 'markwp');
		}

		$classname = 'footer-social-links';
		if(isset($instance['classname'])){
			$classname = $instance['classname'];
		}

		$social_icons = array(
		"facebook",
		"twitter",
		"github",
		"pinterset",
		"instagram",
		"google-plus",
		"youtube",
		"vimeo",
		"tumblr",
		"dribble",
		"flickr",
		"behance",
	);

	foreach($social_icons as $sc) {
		if(!isset($instance[$sc])){
			$instance[$sc] = "";
		}
	}

	?>
	<p>
		<label for="<?php echo esc_attr($this->get_field_id('title')) ?>"><?php _e('Title') ?></label>
		<input class="widefat" 
		id="<?php echo esc_attr($this->get_field_id('title')); ?>" 
		type="text" 
		name="<?php echo esc_attr($this->get_field_name('title')); ?>"
		value="<?php echo esc_attr($title); ?>"
		/>
	</p>
	<p>
		<label for="<?php echo esc_attr($this->get_field_id('classname')) ?>"><?php _e('CSS Class name','markwp') ?></label>
		<input class="widefat" 
		id="<?php echo esc_attr($this->get_field_id('classname')); ?>" 
		type="text" 
		name="<?php echo esc_attr($this->get_field_name('classname')); ?>"
		value="<?php echo esc_attr($classname); ?>"
		/>
	</p>
	<?php foreach ($social_icons as $sci) {
	?>
	<p>
		<label for="<?php echo esc_attr($this->get_field_id($sci)); ?>"><?php echo esc_html(ucfirst($sci)." URL :"); ?></label>
		<br/>
		<input class="widefat" 
		id="<?php echo esc_attr($this->get_field_id($sci)); ?>" 
		type="text" 
		name="<?php echo esc_attr($this->get_field_name($sci)); ?>"
		value="<?php echo esc_attr($instance[$sci]); ?>"
		/>
	</p>
	<?php


}

	}
} // Class Footer_Widget

function mark_social_icons_widget(){
	register_widget('MarkSocialIcons_widget');
}

add_action('widgets_init', 'mark_social_icons_widget');