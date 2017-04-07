<?php

class HomePage extends Page {

	private static $has_many = array(
	
	);

	public function getCMSFields(){	
		$fields = parent::getCMSFields();	

		$fields->removeByName("Content");
		$fields->removeByName("Background");
		$fields->removeByName("note");

		$fields->insertAfter(LiteralField::create('ImageNote', '<p>These images work best if in landscape orientation.<br />Also be aware that the edges will be trimmed when resized for small devices (eg tablet/phone).</p><p><strong>Ideal size:</strong> 2000px wide x 1200px high</p>'), 'heading');
		
		return $fields;
	}


}

class HomePage_Controller extends Page_Controller {
}