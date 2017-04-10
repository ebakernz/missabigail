<?php
class FooterLink extends DataObject {

	public static $db = array(
		'FooterText' => 'Varchar',
		'FooterTextTitle' => 'Varchar',
		'FooterPageLink' => 'Int',
		'FooterColumn' => 'Varchar',
		'Bold' => 'Boolean',
		'SortID' => 'Int'
	);

	public static $has_one = array(
		'ConfigSettings' => 'ConfigSettings'
	);
	
	// Summary fields 
	public static $summary_fields = array( 
		'FooterText' => 'Footer Text',
		'FooterTextTitle' => 'Footer Link Title Attribute',
		'FooterPageLink' => 'Link to page',
		'FooterColumn' => 'Column Number'
	);
	
	static $default_sort = 'SortID';
	
	// Fields for the DOM Popup
    public function getCMSFields() {		
		
		return new FieldList(
			new TextField('FooterText', 'Footer content'),
			new TextField('FooterTextTitle', 'Footer Link Title Attribute'),
			new CheckboxField('Bold', 'Make text bold'),
			new TreeDropdownField('FooterPageLink', 'Link to page:', 'SiteTree')
			/*new DropdownField('FooterColumn',
								'Column Number',
								array(
										'Column1' => 'Column 1',
										'Column2' => 'Column 2',
										'Column3' => 'Column 3',
										'Column4' => 'Column 4'
										
									)						
								
								)*/	
			);
    }
	
	function ShowPageLink() {
		$page = Page::get_by_id('Page', $this->FooterPageLink );
		if( !isset($page->ID) ){
			return false;
		} 
		return $page->Link();
	}
}