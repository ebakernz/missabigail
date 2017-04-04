<?php

class Module extends DataObject {
	
	private static $db = array(
		'Title' => 'Text',
		'LinkText' => 'Text',
		'SortID' => 'Int'
	);

	private static $has_one = array(
		'Page' => 'Page',
		'BackgroundImage' => 'Image',
		'LinkImage' => 'Image'
	);

}