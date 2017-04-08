<?php

class TestimonialAdmin extends ModelAdmin {
    private static $managed_models = array(
		'Testimonial'
    );

    private static $url_segment = 'testimonials';
    private static $menu_title = 'Testimonials';
	private static $menu_icon = 'site/cms/icons/people-group.png';
	
}