<?php

require_once('conf/ConfigureFromEnv.php');

// Set the site locale
i18n::set_locale('en_US');

// Extensions
DataObject::add_extension('SiteConfig', 'SiteConfigExtension');
Object::add_extension('UserDefinedForm', 'UserDefinedFormExtension');

HtmlEditorConfig::get('cms')->setOption('content_css', 'site/production/editor.css');

// specify log files
$path = BASE_PATH.'/../logs';
SS_Log::add_writer(new SS_LogFileWriter($path.'/info.log'), SS_Log::WARN, '<=');
SS_Log::add_writer(new SS_LogFileWriter($path.'/errors.log'), SS_Log::ERR);