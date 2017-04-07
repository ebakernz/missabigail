<?php

class Slide extends DataObject {
	
	private static $db = array(
		'Title' => 'Varchar',
		'SortOrder' => 'Int'
	);

	private static $has_one = array(
		'SlideImg' => 'Image',
		'Page' => 'Page'
	);

	static $default_sort = 'SortOrder';

	private static $summary_fields = array(
		'SlideImg.CMSThumbnail' => 'Image'
	);

	public function getCMSFields() {

		$img = new UploadField('SlideImg', 'Image');
		$img->setFolderName('HomepageSlides');

		return new FieldList(
			new TextField('Title', 'Title<br />(used for hidden description)'),
			$img
		);
	
	}
}