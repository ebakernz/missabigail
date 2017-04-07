<?php
class Page extends SiteTree {

	private static $db = array();

	private static $has_one = array(
		'BackgroundImage' => 'Image'
	);

	private static $has_many = array(
		'Slides' => 'Slide'
	);
	
	public function getCMSFields(){	
		$fields = parent::getCMSFields();

		$fields->addFieldToTab('Root.Background', UploadField::create('BackgroundImage', 'Background image')->setFolderName('BackgroundImages'));

		$fields->addFieldToTab('Root.Slides', LiteralField::create('note', '<h4>Please note:</h4><p>These images will be display on the right half of the page. If only one slide is created it will be displayed as a static image. If multiple slides are created, a slider or fade effect between the images will be created.</p>'));
		// Slides
		$slideGridFieldConfig = GridFieldConfig_RecordEditor::create(10);		
    	$slideGridFieldConfig->addComponent( new GridFieldSortableRows('SortOrder') );	
		$slideGridField = new GridField("Slides", "Slide", $this->Slides(), $slideGridFieldConfig);
		$fields->addFieldToTab('Root.Slides', $slideGridField);


		return $fields;
	}
	
	/**
	 * Get this model's controller
	 * @return obj
	 */
	public function MyController(){
		$class = $this->ClassName . "_Controller";
		$controller = new $class($this);
		return $controller;
	}
}

class Page_Controller extends ContentController {

	private static $allowed_actions = array();

	/**
	 * When we initialize this controller
	 * This happens during the birth of the universe
	 **/
	public function init() {	
		parent::init();
		
		// global compiled javascript
		if( Director::isLive() ){
			Requirements::javascript('site/production/index.min.js');
		}else{
			Requirements::javascript('site/production/index.js');
		}
		
		// global css (compiled scss)
		if( Director::isLive() ){
			Requirements::css('site/production/index.min.css');
		}else{
			Requirements::css('site/production/index.css');
		}

		Requirements::css('https://fonts.googleapis.com/css?family=Parisienne');
	}

	function SingleSlide() {
		if($this->Slides()->Count() == 1) {
			return true;
		}
	}

	function ShowAllFooterLinks() {
		return FooterLink::get();
	}

	/* get original Contact page content to display on Form completion instead of thank you message */
	public function ShowOriginalContactContent() {        
		$newContent = $this->Content;
		return $newContent;		
    }
}