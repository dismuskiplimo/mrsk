<?php 


	// Horizontal progress bar shortcode
	return array(
			"name" => "Progress Bar",
			"base" => "bar",
			"icon" => "icon-wpb-progress_bar",
			"allowed_container_element" => 'vc_row',
			"category" => __('Nectar Elements', 'js_composer'),
			"description" => __('Include a horizontal progress bar', 'js_composer'),
			"params" => array(
				array(
					"type" => "textfield",
					"holder" => "div",
					"class" => "",
					"heading" => "Title",
					"param_name" => "title",
					"description" => ""
				),
				array(
					"type" => "textfield",
					"holder" => "div",
					"class" => "",
					"heading" => "Percentage",
					"param_name" => "percent",
					"description" => "Don't include \"%\" in your string - e.g \"70\""
				),
				array(
					"type" => "dropdown",
					"holder" => "div",
					"class" => "",
					'save_always' => true,
					"heading" => "Bar Color",
					"param_name" => "color",
					"value" => array(
						"Accent-Color" => "Accent-Color",
						"Extra-Color-1" => "Extra-Color-1",
						"Extra-Color-2" => "Extra-Color-2",	
						"Extra-Color-3" => "Extra-Color-3",
						"Extra-Color-Gradient-1" => "extra-color-gradient-1",
				 		"Extra-Color-Gradient-2" => "extra-color-gradient-2"
					),
					"description" => ""
				)

			)
	);
	

?>