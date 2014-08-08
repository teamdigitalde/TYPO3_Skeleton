<?php 
$tx_realurl_config = array(
	'init' => array(
		'enableCHashCache' => 1,
		'appendMissingSlash' => 'ifNotFile',
		'enableUrlDecodeCache' => 1,
		'enableUrlEncodeCache' => 1,
		'respectSimulateStaticURLs' => 0,
		'postVarSet_failureMode'=>'',
		'emptyUrlReturnValue' => '/',
		'doNotRawUrlEncodeParameterNames' => true,
	),
	'redirects_regex' => array (
															
	),
	'preVars' => array(
		array(
			'GETvar' => 'no_cache',
			'valueMap' => array(
				'no_cache' => 1,
			),
			'noMatch' => 'bypass',
		),
		array(
			'GETvar' => 'L',
			'valueMap' => array(
				#'en' => '1',
				#'fr' => '2',
			),
			'noMatch' => 'bypass',
		),
	),
	'postVarSets' => array(
		'_DEFAULT' => array(
		
		),      
	),
	'pagePath' => array(
		'type' => 'user',
		'userFunc' => 'EXT:realurl/class.tx_realurl_advanced.php:&tx_realurl_advanced->main',
		'spaceCharacter' => '-',
		'languageGetVar' => 'L',
		'expireDays' => 3,
	),
	'fileName' => array(
		'defaultToHTMLsuffixOnPrev'=>1,
	),
);

$TYPO3_CONF_VARS['EXTCONF']['realurl'] = array(
	'www.example.com' => $tx_realurl_config,

/*	'_DOMAINS' => array(
		'encode' => array(
			array(
				'GETvar' => 'L',
				'value' => '0',
				'useConfiguration' => 'example.com',
				'urlPrepend' => 'http://example.de'
			),
			array(
				'GETvar' => 'L',
				'value' => '1',
				'useConfiguration' => 'example.com',
				'urlPrepend' => 'http://example.es'
			)
		),
		'decode' => array(
			'www.example.com' => array(
				'GETvars' => array(	
					'L' => '1',
				),
			),
		)
	)*/
);
$TYPO3_CONF_VARS['EXTCONF']['realurl']['www.example.com']['pagePath']['rootpage_id'] = 1;
?>