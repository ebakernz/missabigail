<?php

class Slide extends DataObject {
	
	private static $db = array(
		'Title' => 'Varchar',
		'SortOrder' => 'Int'
	);

	private static $has_one = array(
		'SlideImg' => 'Image',
		'HomePage' => 'HomePage'
	);

	static $default_sort = 'SortOrder';

	public function getCMSFields() {

		$img = new UploadField('SlideImg', 'Image');
		$img->setFolderName('HomepageSlides');

		return new FieldList(
			new TextField('Title', 'Title<br />(used for hidden description)'),
			$img
		);
	
	}
}