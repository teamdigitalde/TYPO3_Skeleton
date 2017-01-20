#############################################################
## Manual inclusion to keep control over loading order     ##
## replace paths and remember to add new typoscript files  ##
#############################################################

/*
 * Page Configuration
 */
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Page_Configuration/page.config.ts">
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Page_Configuration/page.includeCSS.ts">
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Page_Configuration/page.includeJS.ts">
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Page_Configuration/page.headerData.ts">
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Page_Configuration/page.meta.ts">
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Page_Configuration/page.footerData.ts">
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Page_Configuration/page.ts">

/*
* Menu
*/
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Menu/menu.defaults.ts">
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Menu/menu.breadcrumb.ts">
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Menu/menu.firstlevel.ts">
#<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Menu/menu.firstAndSecondLevel.ts">
#<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Menu/menu.firstThreeLevels.ts">
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Menu/menu.firstFourLevels.ts">
#<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Menu/menu.language.ts">
#<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Menu/menu.secondlevel.ts">
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Menu/menu.top.ts">
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Menu/menu.footer.ts">

/*
* Page Blocks / Content
*/
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Page_Blocks/page.bodyTag.ts">
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Page_Blocks/page.content.ts">
#<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Page_Blocks/page.footer.ts">
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Page_Blocks/page.staticHeaderImage.ts">

/*
* System Configuration
*/
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/System/lib.fluidContent.ts">
<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/System/lib.parseFunc_RTE.ts">

/*
* Extension Configuration with conditional inclusion
*/
[userFunc = TYPO3\CMS\Core\Utility\ExtensionManagementUtility::isLoaded('gridelements')]
	<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Extension/plugin.gridelements.ts">
[global]
[userFunc = TYPO3\CMS\Core\Utility\ExtensionManagementUtility::isLoaded('indexed_search')]
	<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Extension/plugin.indexedsearch.ts">
[global]
[userFunc = TYPO3\CMS\Core\Utility\ExtensionManagementUtility::isLoaded('powermail')]
	<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/example.com/TypoScript/Extension/plugin.powermail.ts">
[global]