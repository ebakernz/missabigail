<?php

class Testimonial extends DataObject {
	
	private static $db = array(
		'Quote' => 'Text',
		'Author' => 'Varchar',
		'SortOrder' => 'Int'
	);

	private static $belongs_many_many = array(
		'Page' => 'Page'
	);

	static $summary_fields = array(
		'Quote' => 'Quote',
		'Author' => 'Author'
	);
	
	static $default_sort = 'SortOrder';

	public function getCMSFields() {

		return new FieldList(
			TextareaField::create('Quote', 'Quote'),
			TextField::create('Author', 'Author'),
			ListBoxField::create(
				'Page', 
				'Show on page(s)', 
				Page::get()->map('ID', 'Title')->toArray(),
				$value = array(),
				$size = null,
				$multiple = true
			)
		);
	
	}
}