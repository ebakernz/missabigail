<?php

class GalleryPage extends Page {

	private static $db = array(
		'ShowFilter' => 'Boolean'
	);

	private static $has_many = array(
		'Categories' => 'Category',
		'Items' => 'GalleryItem'
	);
	
	public function getCMSFields(){	
		$fields = parent::getCMSFields();

		$fields->removeByName('Slides');	
		
		// Categories
	//	$fields->addFieldToTab('Root.Categories', CheckboxField::create('ShowFilter', 'Show filters'));

		$fdGridFieldConfig = GridFieldConfig_RecordEditor::create(300);		
    	$fdGridFieldConfig->addComponent( new GridFieldSortableRows('SortOrder') );	
		$fdGridField = new GridField("Categories", "Category", $this->Categories(), $fdGridFieldConfig);
		$fields->addFieldToTab('Root.Categories', $fdGridField);

		// Items
		$fdGridFieldConfig = GridFieldConfig_RecordEditor::create(300);		
    	$fdGridFieldConfig->addComponent( new GridFieldSortableRows('SortOrder') );	
		$fdGridField = new GridField("Items", "GalleryItem", $this->Items(), $fdGridFieldConfig);
		$fields->addFieldToTab('Root.GalleryItems', $fdGridField);

		return $fields;
	}
	
}

class GalleryPage_Controller extends Page_Controller {

	private static $allowed_actions = array(
		'filter'
	);

	public function init() {
		parent::init();
		$this->items = GalleryItem::get()->sort('SortOrder', 'DESC');
	}

	public function GalleryItems() {
		return $this->items->filter(array('GalleryPageID' => $this->ID));
	}

	public function FilterActive($name) {
		
		$params = $this->request->params();
		$filter = $params['ID'];

		if($filter) {
			if($filter == $name) return true;
		} else {
			if($name == 'all') return true;
		}		
	}

	public function filter() {

		$filter = Controller::curr()->getRequest()->param('ID');
		
		if(!$filter) {
			return GalleryItem::get()->sort('SortOrder', 'DESC');
		}

		// FILTER BY CATEGORY
		$filter = str_replace('-', ' ', $filter);
		$filter = ucwords($filter);
		// Check for and's
		$filter = str_replace('And', '&', $filter);

		if( $category = Category::get()->filter(array('Title' => $filter))->first() ) {
			$items = $category->Items()->sort('SortOrder', 'DESC');
		}

		if( $items ) {

			$data = array(
				'GalleryItems' => $items
			);

		} else {

			$data = array(
				'GalleryItems' => false
			);
		}

		return $data;

	}


}