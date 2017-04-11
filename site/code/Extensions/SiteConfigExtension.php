<?php
class SiteConfigExtension extends DataExtension {

	static $db = array(
		'AdminToEmails' => 'Text',
		'AdminFromEmail' => 'Text',
		'Phone' => 'Varchar',
		'Mobile' => 'Varchar',
		'Email' => 'Varchar',
		'Address' => 'Text',
		'Facebook' => 'Varchar',
		'Twitter' => 'Varchar',
		'Instagram' => 'Varchar',
		'Pinterest' => 'Varchar'
	);

	private static $has_one = array(
		'Logo' => 'Image'
	);

	private static $has_many = array(
		'FooterLinks' => 'FooterLink'
	);
	
	public function updateCMSFields(FieldList $fields){	
	
        $fields->addFieldToTab(
        	'Root.Emails', 
        	TextAreaField::create('AdminToEmails','Admin "To" email address(es)')
				->setDescription('Email addresses for deliver of global admin emails eg, contact form submissions etc.<br/>Can be comma-separated list.')
		);

		$fields->addFieldToTab(
        	'Root.Emails', 
        	TextField::create('AdminFromEmail','Admin "From" email address')
				->setDescription('Email addresses for global admin emails to come "From"')
		);

		$fields->addFieldToTab('Root.ContactDetails', TextField::create('Phone', 'Phone'));
		$fields->addFieldToTab('Root.ContactDetails', TextField::create('Mobile', 'Mobile'));
		$fields->addFieldToTab('Root.ContactDetails', TextField::create('Email', 'Email'));
		$fields->addFieldToTab('Root.ContactDetails', TextareaField::create('Address', 'Address'));
		$fields->addFieldToTab('Root.ContactDetails', $headerLogoUploadField = new UploadField('Logo', 'Logo'));

		$fields->addFieldToTab('Root.SocialMedia', TextField::create('Facebook', 'Facebook URL'));
		$fields->addFieldToTab('Root.SocialMedia', TextField::create('Twitter', 'Twitter URL'));
		$fields->addFieldToTab('Root.SocialMedia', TextField::create('Instagram', 'Instagram URL'));
		$fields->addFieldToTab('Root.SocialMedia', TextField::create('Pinterest', 'Pinterest URL'));
		
		/*// ================ Footer Links
		$FooterGridFieldConfig = GridFieldConfig::create()->addComponents(
			new GridFieldToolbarHeader(),
			new GridFieldAddNewButton('toolbar-header-right'),
			new GridFieldSortableHeader(),
			new GridFieldDataColumns(),
			new GridFieldEditButton(),
			new GridFieldDeleteAction(),
			new GridFieldDetailForm(),
			new GridFieldSortableRows('SortID')
		);
	
		$fields->addFieldsToTab('Root.Footer', new GridField("FooterLinks", "Footer Section", $this->ShowFooterLinks(), $FooterGridFieldConfig) );*/
	}

	function ShowFooterLinks() {
		$links = FooterLink::get();
		return $links;
	}

}