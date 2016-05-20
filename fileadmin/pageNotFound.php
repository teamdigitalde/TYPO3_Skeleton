<?php
use TYPO3\CMS\Core\Utility\GeneralUtility;
 
// Redirect to correct page on login failure
// set: config ['FE']['pageNotFound_handling'] => 'USER_FUNCTION:fileadmin/pageNotFound.php:user_pageNotFound->pageNotFound',

$protocol = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off' || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
define(HTTP_HOST, $_SERVER['HTTP_HOST']);
define(HTTP_PROTOCOL, $protocol);

//@todo define login and 404 - pid and use typolink functions
define(LOGIN_URL, HTTP_PROTOCOL . HTTP_HOST. "/loginlogout.html");
define(LOGIN_URL_EN, HTTP_PROTOCOL . HTTP_HOST. "/loginlogout.html");
define(NOTFOUND_URL, HTTP_PROTOCOL . HTTP_HOST);
define(NOTFOUND_URL_EN, HTTP_PROTOCOL . HTTP_HOST);

class user_pageNotFound
{
    function pageNotFound($param,$ref)
    {
	    if ($param["pageAccessFailureReasons"]["fe_group"] != array(""=>0)) 
		{
			header("HTTP/1.0 403 Forbidden");
			if ($_GET['L'] == 1)
			{
				$url = LOGIN_URL_EN."?redirect_url=" . $param["currentUrl"];
			} 
			else 
			{
				$url = LOGIN_URL."?redirect_url=" . $param["currentUrl"];
			}
	    } 
		elseif ((substr($param['currentUrl'], 1, 2)) == "en") 
		{
			$url = NOTFOUND_URL_EN;  
	    } 
		else 
		{
	        $url = NOTFOUND_URL;		
	    }
		    
		session_start();
		$strCookie = 'PHPSESSID=' . $_COOKIE['PHPSESSID'] . '; path=/';
		session_write_close();
   
		$c = curl_init();
		curl_setopt($c, CURLOPT_URL, $url);
		if (!empty($_SERVER['PHP_AUTH_USER']) && !empty($_SERVER['PHP_AUTH_PW'])) {
			curl_setopt($c, CURLOPT_USERPWD, $_SERVER['PHP_AUTH_USER'] . ":" . $_SERVER['PHP_AUTH_PW']);
		}
		curl_setopt($c, CURLOPT_COOKIE, $strCookie);
		$contents = curl_exec($c);
		curl_close($c);
 
		if ($contents)
		{
			return $contents;
		} 
		else 
		{
			return FALSE;
		}
  }
}
?>
