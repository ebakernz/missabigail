<?php

class UserDefinedFormExtension extends DataExtension {

	public function updateCMSFields(FieldList $fields) {	
		$fields->removeByName('Slides');
	}

}