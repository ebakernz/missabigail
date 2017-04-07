<?php

class GalleryItem extends DataObject {
	
	private static $db = array(
		'Title' => 'Text',
		'ColWidth' => "Enum('Single,Double')",
		'SortOrder' => 'Int'
	);

	private static $has_one = array(
		'GalleryPage' => 'GalleryPage',
		'Image' => 'Image',
		'Category' => 'Category'
	);

	static $summary_fields = array(
		'Title' => 'Title',
		'Image.CMSThumbnail' => 'Image'
	);
	
	static $default_sort = 'SortOrder';

	public function getCMSFields() {

		$img = new UploadField('Image', 'Image');
		$img->setFolderName('Gallery');

		$cat = new DropDownField('CategoryID', 'Category', Category::get()->map('ID', 'Title'));
		$cat->setEmptyString('(Select one)');

		return new FieldList(
			new TextField('Title', 'Title<br />(used for hidden description)'),
			$img,
			new OptionsetField(
				'ColWidth', 
				'Column width', 
				singleton('GalleryItem')->dbObject('ColWidth')->enumValues(),
				'Single'
			),
			$cat
		);
	
	}
	
}