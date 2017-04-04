<?php

class HomePage extends Page {

	private static $has_many = array(
		'Slides' => 'Slide'
	);

	public function getCMSFields(){	
		$fields = parent::getCMSFields();		
		
		// Slides
		$slideGridFieldConfig = GridFieldConfig_RecordEditor::create(10);		
    	$slideGridFieldConfig->addComponent( new GridFieldSortableRows('SortOrder') );	
		$slideGridField = new GridField("Slides", "Slide", $this->Slides(), $slideGridFieldConfig);
		$fields->addFieldToTab('Root.Slides', $slideGridField);

		return $fields;
	}


}

class HomePage_Controller extends Page_Controller {
}