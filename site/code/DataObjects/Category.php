<?php

class Category extends DataObject {
	
	private static $db = array(
		'Title' => 'Varchar',
		'SortOrder' => 'Int'
	);

	private static $has_one = array(
		'GalleryPage' => 'GalleryPage'
	);

	private static $has_many = array(
		'Items' => 'GalleryItem'
	);

	static $summary_fields = array(
		'Title' => 'Title'
	);
	
	static $default_sort = 'SortOrder';

	public function getCMSFields() {

		return new FieldList(
			new TextField('Title', 'Title')
		);

	}

	public function URLName() {
	//	'Leah & Stathie'	'leah-&-stathie'
		$str = str_replace('&', 'and', $this->Title);
		return strtolower(str_replace(' ', '-', $str));
	}

	public function GalleryPageLink() {
		return $this->GalleryPage()->Link();
	}
	
}