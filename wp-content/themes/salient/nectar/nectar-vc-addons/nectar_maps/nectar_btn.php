<?php 


return array(
	  "name" => __("Button", "js_composer"),
	  "base" => "nectar_btn",
	  "icon" => "icon-wpb-btn",
	  "category" => __('Nectar Elements', 'js_composer'),
	  "weight" => 1,
	  "description" => __('Add a button', 'js_composer'),
	  "params" => array(

	  	array(
			'type' => 'dropdown',
			'heading' => __( 'Size', 'js_composer' ),
			'value' => array(
				__( 'Small', 'js_composer' ) => 'small',
				__( 'Medium', 'js_composer' ) => 'medium',
				__( 'Large', 'js_composer' ) => 'large',
				__( 'Jumbo', 'js_composer' ) => 'jumbo',
				__( 'Extra Jumbo', 'js_composer' ) => 'extra_jumbo',
			),
			'save_always' => true,
			'param_name' => 'size',
			'description' => __( 'Select your button size.', 'js_composer' ),
		),
		array(
	      "type" => "textfield",
	      "heading" => __("Link URL", "js_composer"),
	      "param_name" => "url",
	      "description" => __("The link for your button." , "js_composer")
	    ),
	    array(
	      "type" => "textfield",
	      "heading" => __("Text", "js_composer"),
	      "param_name" => "text",
	      "admin_label" => true,
	      "description" => __("The text for your button." , "js_composer")
	    ),
	    array(
			"type" => "checkbox",
			"class" => "",
			"heading" => __("Open Link In New Tab?", "js_composer"),
	     	"param_name" => "open_new_tab",
			"value" => Array(__("Yes", "js_composer") => 'true'),
			"description" => ""
		),
		array(
			'type' => 'dropdown',
			'heading' => __( 'Style', 'js_composer' ),
			'value' => array(
				__( 'Regular', 'js_composer' ) => 'regular',
				__( 'Regular With Tilt', 'js_composer' ) => 'regular-tilt',
				__( 'See Through', 'js_composer' ) => 'see-through',
				__( 'See Through Solid On Hover', 'js_composer' ) => 'see-through-2',
				__( 'See Through Solid On Hover Alt', 'js_composer' ) => 'see-through-3',
				__( 'See Through 3D', 'js_composer' ) => 'see-through-3d',
			),		
			'save_always' => true,
			'param_name' => 'button_style',
			'description' => __( 'Select your button style.', 'js_composer' ),
		),
		array(
			'type' => 'dropdown',
			'heading' => __( 'Button Color', 'js_composer' ),
			'value' => array(
				"Accent-Color" => "Accent-Color",
				"Extra-Color-1" => "Extra-Color-1",
				"Extra-Color-2" => "Extra-Color-2",	
				"Extra-Color-3" => "Extra-Color-3"
			),
			'dependency' => array(
				'element' => 'button_style',
				'value' => array('regular-tilt'),
			),
			'save_always' => true,
			'param_name' => 'button_color',
			'description' => __( 'Select your button style.', 'js_composer' ),
		),
		array(
			'type' => 'dropdown',
			'heading' => __( 'Button Color', 'js_composer' ),
			'value' => array(
				"Accent-Color" => "Accent-Color",
				"Extra-Color-1" => "Extra-Color-1",
				"Extra-Color-2" => "Extra-Color-2",	
				"Extra-Color-3" => "Extra-Color-3",
				"Extra-Color-Gradient-1" => "extra-color-gradient-1",
		 		"Extra-Color-Gradient-2" => "extra-color-gradient-2"
			),
			'save_always' => true,
			'dependency' => array(
				'element' => 'button_style',
				'value' => array('regular','see-through'),
			),
			'param_name' => 'button_color_2',
			'description' => __( 'Select your button style.', 'js_composer' ),
		),
		array(
				"type" => "colorpicker",
				"class" => "",
				"heading" => "Color Override",
				"param_name" => "color_override",
				"value" => "",
				"description" => "won't take effect on gradient colored btns",	
			),
		array(
				"type" => "colorpicker",
				"class" => "",
				"heading" => "Hover BG Color",
				"param_name" => "hover_color_override",
				"dependency" => array('element' => "button_style", 'value' => array('see-through-2','see-through-3')),
				"value" => "",
				"description" => ""
			),
		array(
			'type' => 'dropdown',
			'heading' => __( 'Hover Text Color', 'js_composer' ),
			'value' => array(
				__( 'Light', 'js_composer' ) => '#ffffff',
				__( 'Dark', 'js_composer' ) => '#000000'
			),
			'save_always' => true,
			'param_name' => 'hover_text_color_override',
			"dependency" => array('element' => "button_style", 'value' => array('see-through-2','see-through-3')),
			'description' => __( 'Select the color that will be used for the text on hover', 'js_composer' ),
		),
		array(
	        'type' => 'animation_style',
	        'heading' => 'CSS Animation',
	        'param_name' => 'css_animation'
	    ),
		array(
			'type' => 'dropdown',
			'heading' => __( 'Icon library', 'js_composer' ),
			'value' => array(
				__( 'None', 'js_composer' ) => 'none',
				__( 'Default Arrow', 'js_composer' ) => 'default_arrow',
				__( 'Font Awesome', 'js_composer' ) => 'fontawesome',
				__( 'Iconsmind', 'js_composer' ) => 'iconsmind',
				__( 'Steadysets', 'js_composer' ) => 'steadysets',
				__( 'Linecons', 'js_composer' ) => 'linecons',
			),
			'save_always' => true,
			'param_name' => 'icon_family',
			"dependency" => array('element' => "button_style", 'value' => array('regular','regular-tilt','see-through','see-through-2','see-through-3')),
			'description' => __( 'Select icon library.', 'js_composer' ),
		),
		array(
	      "type" => "iconpicker",
	      "heading" => __("Icon", "js_composer"),
	      "param_name" => "icon_fontawesome",
	      "settings" => array( "iconsPerPage" => 4000),
	      "dependency" => array('element' => "icon_family", 'emptyIcon' => false, 'value' => 'fontawesome'),
	      "description" => __("Select icon from library.", "js_composer")
	    ),
	    array(
	      "type" => "iconpicker",
	      "heading" => __("Icon", "js_composer"),
	      "param_name" => "icon_iconsmind",
	      "settings" => array( 'type' => 'iconsmind', 'emptyIcon' => false, "iconsPerPage" => 4000),
	      "dependency" => array('element' => "icon_family", 'value' => 'iconsmind'),
	      "description" => __("Select icon from library.", "js_composer")
	    ),
	    array(
	      "type" => "iconpicker",
	      "heading" => __("Icon", "js_composer"),
	      "param_name" => "icon_linecons",
	      "settings" => array( 'type' => 'linecons', 'emptyIcon' => false, "iconsPerPage" => 4000),
	      "dependency" => array('element' => "icon_family", 'value' => 'linecons'),
	      "description" => __("Select icon from library.", "js_composer")
	    ),
	    array(
	      "type" => "iconpicker",
	      "heading" => __("Icon", "js_composer"),
	      "param_name" => "icon_steadysets",
	      "settings" => array( 'type' => 'steadysets', 'emptyIcon' => false, "iconsPerPage" => 4000),
	      "dependency" => array('element' => "icon_family", 'value' => 'steadysets'),
	      "description" => __("Select icon from library.", "js_composer")
	    ),
	    array(
	      "type" => "textfield",
	      "heading" => __("Margin <span>Top</span>", "js_composer"),
	      "param_name" => "margin_top",
	      "edit_field_class" => "col-md-2",
	      "description" => __("." , "js_composer")
	    ),
		 array(
	      "type" => "textfield",
	      "heading" => __("<span>Right</span>", "js_composer"),
	      "param_name" => "margin_right",
	      "edit_field_class" => "col-md-2",
	      "description" => __("" , "js_composer")
	    ),
		array(
	      "type" => "textfield",
	      "heading" => __("<span>Bottom</span>", "js_composer"),
	      "param_name" => "margin_bottom",
	      "edit_field_class" => "col-md-2",
	      "description" => __("" , "js_composer")
	    ),
	    array(
	      "type" => "textfield",
	      "heading" => __("<span>Left</span>", "js_composer"),
	      "param_name" => "margin_left",
	      "edit_field_class" => "col-md-2",
	      "description" => __("" , "js_composer")
	    ),
	  )
	);

?>