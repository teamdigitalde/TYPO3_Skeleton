lib.currentUrl= COA
lib.currentUrl {
  10 = TEXT
  10.typolink {
    parameter.data = TSFE:id
    returnLast = url
    forceAbsoluteUrl = 1
    addQueryString = 1
    addQueryString.method = GET
    addQueryString.exclude = cHash,backPid
  }
}

lib.canonical = COA
lib.canonical {
  10 = COA
  10 {
    10 < lib.currentUrl.10
    wrap = <link rel="canonical" href="|" />
  }
}

lib.hreflang = HMENU
lib.hreflang {
  special = language
  special.value = 0,1,2
  1 = TMENU
  1 {
    # Link zu nicht-aktiven Sprachen anzeigen
    NO = 1
    NO {
      stdWrap.cObject = TEXT
      stdWrap.cObject.value = de || en || fr
      linkWrap = <link rel="alternate" hreflang="|
      doNotLinkIt = 1
      after.cObject = TEXT
      after.cObject {
        stdWrap {
          wrap = " href="|" />
          typolink {
            parameter.data = TSFE:id
            additionalParams = &L=0 || &L=1 || &L=2
            returnLast = url
            forceAbsoluteUrl = 0
            addQueryString = 1
            addQueryString.method = GET
            addQueryString.exclude = cHash,backPid
          }
        }
      }
    }
    # Link zur gerade aktiven Sprache NICHT anzeigen
    #ACT = 1
    #ACT.doNotShowLink = 1
    # Link zu fehlenden Übersetzungen NICHT anzeigen
    USERDEF1 = 1
    USERDEF1.doNotShowLink = 1
  }
  if.isTrue = {$headerData.hreflang.active}
}

page.headerData {
	10 = COA
	10 {
		10 = TEXT
		10.field = title
		20 = TEXT
		20 {
			value = {$meta.pagetitleAddition.value}
			value.noTrimWrap = {$meta.pagetitleAddition.noTrimWrap}
			if.isTrue = {$meta.pagetitleAddition.active}
		}
		wrap = <title>|</title>
		htmlSpecialChars = 1
	}
	
	#40 = TEXT
	#40.value = <link rel="apple-touch-icon" href="http://deinedomain.de/fileadmin/templates/fileadmin/templates/img/apple-touch-icon-144x144-precomposed.png" />

	45 = TEXT
	45 {
		value (
			<meta name="geo.region" content="{$meta.geo.region}" />
  		<meta name="geo.placename" content="{$meta.geo.placename}" />
  		<meta name="geo.position" content="{$meta.geo.position}" />
  		<meta name="ICBM" content="{$meta.geo.position}" />
		)
		if.isTrue = {$meta.geo.active}
	}
	50 = TEXT
	50.value = <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	60 = TEXT
	60.value = <script gumby-touch="{$filepaths.scripts}libs" src="{$filepaths.scripts}libs/gumby.min.js"></script>
	
	#70 = TEXT
	#70.value = <link href='http://fonts.googleapis.com/css?family=Lora:400,700,700italic,400italic' rel='stylesheet' type='text/css'>
	
	5220 < lib.hreflang
	5230 < lib.canonical
}