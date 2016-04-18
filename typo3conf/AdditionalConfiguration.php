<?php
if (!defined('TYPO3_MODE')) {
    die ('Access denied.');
}

$context = \TYPO3\CMS\Core\Utility\GeneralUtility::getApplicationContext()->__toString();

$customChanges = array(
    'FE' => array(
            'addRootLineFields' => $GLOBALS['TYPO3_CONF_VARS']['FE']['addRootLineFields'] . ',keywords,description',
            //'disableNoCacheParameter' => TRUE,
            //'hidePagesIfNotTranslatedByDefault' => TRUE
    ),
    'GFX' => array(
            'png_truecolor' => 1
    ),
    'EXT' => array(
            'extConf' => array(
                    'rtehtmlarea' => serialize(array(
                            'enableImages' => 1,
                    )),
                    'news' => serialize(array(
                            'removeListActionFromFlexforms' => 2,
                            'pageModuleFieldsNews' => 'LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:pagemodule_simple=title,datetime;LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:pagemodule_advanced=title,datetime,teaser,categories;LLL:EXT:news/Resources/Private/Language/locallang_be.xlf:pagemodule_complex=title,datetime,teaser,categories,archive;',
                            'pageModuleFieldsCategory' => 'title,description',
                            'tagPid' => 1,
                            'prependAtCopy' => 0,
                            'categoryRestriction' => 'none',
                            'contentElementRelation' => 0,
                            'manualSorting' => 0,
                            'archiveDate' => 'date',
                            'showImporter' => 0,
                            'showAdministrationModule' => 1,
                            'showMediaDescriptionField' => 0,
                            'useFal' => 1,
                    )),
                    'realurl' => serialize(array(
                            'configFile' => 'typo3conf/realurl_conf.php',
                            'enableAutoConf' => 0,
                            'autoConfFormat' => 0,
                            'enableDevLog' => 0,
                            'enableChashUrlDebug' => 0,
                    )),
            )
    ),
);

$GLOBALS['TYPO3_CONF_VARS'] = array_replace_recursive($GLOBALS['TYPO3_CONF_VARS'], (array)$customChanges);


$file = realpath(__DIR__) . '/AdditionalConfiguration_' . strtolower($context) . '.php';
if (is_file($file)) {
    include_once($file);
    $GLOBALS['TYPO3_CONF_VARS'] = array_replace_recursive($GLOBALS['TYPO3_CONF_VARS'], (array)$customChanges);
}

// load custom configuration, that is not placed in git, e.g. for local development only changes
$file = realpath(__DIR__) . '/AdditionalConfiguration_custom.php';
if (is_file($file)) {
    include_once($file);
    $GLOBALS['TYPO3_CONF_VARS'] = array_replace_recursive($GLOBALS['TYPO3_CONF_VARS'], (array)$customChanges);
}

# userfunction for pageNotFound_handling
# remember to edit the corresponding scrip!
$GLOBALS['TYPO3_CONF_VARS']['FE']['pageNotFound_handling'] = 'USER_FUNCTION:fileadmin/pageNotFound.php:user_pageNotFound->pageNotFound';
?>