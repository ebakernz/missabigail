<?php

class GalleryItem extends DataObject {
	
	private static $db = array(
		'Title' => 'Text',
		'ColWidth' => 'Varchar',
		'SortOrder' => 'Int'
	);

	private static $has_one = array(
		'GalleryPage' => 'GalleryPage',
		'Image' => 'Image',
		'Category' => 'Category'
	);

	static $summary_fields = array(
		'Image.CMSThumbnail' => 'Image'
	);
	
	static $default_sort = 'SortOrder';

	public function getCMSFields() {

		$img = new UploadField('Image', 'Image');
		$img->setFolderName('Gallery');

		$cat = new DropDownField('CategoryID', 'Category', Category::get()->filter(array('GalleryPageID' => $this->GalleryPageID))->map('ID', 'Title'));
		$cat->setEmptyString('(Select one)');

		return new FieldList(
			new TextField('Title', 'Title<br />(used for hidden description)'),
			$img,
			new LiteralField('SizeNote', '<p><strong>Ideal image sizing:</strong><br />Portrait: 1200px high max<br />Landscape: 1200px wide max</p>'),
			/*new OptionsetField(
				'ColWidth', 
				'Image orientation', 
				array('Single' => 'Portrait', 'Double' => 'Landscape'),
				'Single'
			),*/
			$cat
		);
	
	}
	
	public function ImageOrientation() {
		if($this->Image()->getOrientation() == 1) {
			return 'portrait';
		} else {
			return 'landscape';
		}
	}
}