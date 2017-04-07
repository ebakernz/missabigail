<?php

class HomePage extends Page {

	private static $has_many = array(
	
	);

	public function getCMSFields(){	
		$fields = parent::getCMSFields();	

		$fields->removeByName("Background");	
		
		
		return $fields;
	}


}

class HomePage_Controller extends Page_Controller {
}