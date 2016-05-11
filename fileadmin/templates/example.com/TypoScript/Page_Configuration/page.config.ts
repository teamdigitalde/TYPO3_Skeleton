config {
  # Display error messages instead of an unreadable errorcode
  #contentObjectExceptionHandler = 0
  // Administrator settings
  admPanel    = {$config.adminPanel}
  debug      = {$config.debug}
  
  doctype      = html5

  // Character sets
  renderCharset     = utf-8
  metaCharset     = utf-8

  // Cache settings
  cache_period    = 43200
  sendCacheHeaders  = 1
        
  // URL Settings
  tx_realurl_enable       = 1
  simulateStaticDocuments = 0

  // Language Settings
  uniqueLinkVars          = 1
  linkVars                = L(1)
  sys_language_uid   = 0
  sys_language_overlay   = 0
  sys_language_mode   = content_fallback
  language           = de
  locale_all         = de_DE.UTF-8
  sys_language_isocode_default    = de
  typolinkEnableLinksAcrossDomains = 1
  
  // Link settings
  # # # # absRefPrefix            = /
  prefixLocalAnchors      = all
  
  // Remove targets from links
  intTarget =
  #extTarget =

  // Indexed Search
  index_enable    = 0
  index_externals    = 0

  // Code cleaning
  disablePrefixComment  = 1
  
  // Move default CSS and JS to external file  
  removeDefaultJS        = external
  inlineStyle2TempFile   = 1

  pageTitleFirst = 1
  pageTitleSeparator = :
  pageTitleSeparator.noTrimWrap = | | |

  // Protect mail addresses from spamming
  spamProtectEmailAddresses = -3
  #spamProtectEmailAddresses_atSubst = @<span style="display:none;">remove-this.</span>
  
  // keep file-name
  meaningfulTempFilePrefix = 100
  # Include Boilerplate handling for IE browsers
  htmlTag_stdWrap {
    setContentToCurrent = 1
    cObject = COA
    cObject {
      10 = LOAD_REGISTER
      10 {
        newLine.char = 10
        tagEnd {
          current = 1
          split.max = 2
          split.token = <html
          split.returnKey = 1
        }
      }

      20 = TEXT
      20.value = <!--[if lt IE 7]> <html class="no-js ie6 oldie"{register:tagEnd} <![endif]-->
      20.wrap = |{register:newLine}
      20.insertData = 1
      30 < .20
      30.value = <!--[if IE 7]> <html class="no-js ie7 oldie"{register:tagEnd} <![endif]-->
      40 < .20
      40.value = <!--[if IE 8]> <html class="no-js ie8 oldie"{register:tagEnd} <![endif]-->
      50 < .20
      50.value = <!--[if gt IE 8]> <!--><html class="no-js"{register:tagEnd} <!--<![endif]-->

      90 = RESTORE_REGISTER
    }
  }
	concatenateCss = 0
	concatenateJs = 0
	compressCss = 0
	compressJs = 0
	headerComment (
———————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
| TYPO3 Webdesign und Extbase Programmierung by team digital GmbH - www.team-digital.de - Alle Rechte vorbehalten.  |
———————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
  )
}

# Set baseURL setting for http or https
config.baseURL >
config.absRefPrefix = http://{$config.domain}/
[globalString = IENV:TYPO3_SITE_URL=https://{$config.domain}/]
config.absRefPrefix = https://{$config.domain}/
[global]

// Condition to set language according to L POST/GET variable
[globalVar = GP:L = 1]
config {
  sys_language_isocode = en
  sys_language_uid = 1
  language = en
  locale_all = en_GB
}
[global]

[applicationContext = Development*]
  config {
	  no_cache = 1
	  tx_realurl_enable = 0
	  concatenateCss = 0
	  concatenateJs = 0
	  compressCss = 0
	  compressJs = 0
	  headerComment (
———————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
| TYPO3 Webdesign und Extbase Programmierung by team digital GmbH - www.team-digital.de - Alle Rechte vorbehalten.
| DEVELOPMENT
———————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
	)
  }
[end]