lib.canonical = TEXT
lib.canonical {
	typolink {
		parameter.cObject = COA
		parameter.cObject {
			10 = TEXT
			10.data = TSFE:page|content_from_pid
			10.if.isTrue.data = TSFE:page|content_from_pid
			20 = TEXT
			20.data = TSFE:id
			20.if.isFalse.data = TSFE:page|content_from_pid
		}
		forceAbsoluteUrl = 1
		returnLast = url
		useCacheHash = 1
		additionalParams < lib.currentUrl.10.typolink.additionalParams
	}
	wrap = <link rel="canonical" href="|" />
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
						returnLast = url
						forceAbsoluteUrl = 0
						additionalParams < lib.currentUrl.10.typolink.additionalParams
						additionalParams.cObject.1 = TEXT
						additionalParams.cObject.1.value = &L=0 || &L=1 || &L=2
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
	40 = COA
	40 {
		// Apple touch icons
		10 = IMG_RESOURCE
		10 {
			file = {$filepaths.images}favicon_256.png
			file {
				width = 57c
				height = 57c
			}
			stdWrap.dataWrap = <link rel="apple-touch-icon" sizes="{TSFE:lastImgResourceInfo|0}x{TSFE:lastImgResourceInfo|1}" href="|">
		}
		20 < .10
		20.file {
			width = 76c
			height = 76c
		}
		77 < .10
		77.file {
			width = 114c
			height = 114c
		}
		78 < .10
		78.file {
			width = 152c
			height = 152c
		}
		79 < .10
		79.file {
			width = 180c
			height = 180c
		}
		// ...

		// Android icons
		80 < .10
		80 {
			file {
				width = 16c
				height = 16c
			}
			stdWrap.dataWrap = <link rel="icon" type="image/png" sizes="{TSFE:lastImgResourceInfo|0}x{TSFE:lastImgResourceInfo|1}" href="|">
		}
		81 < .80
		81.file {
			width = 32c
			height = 32c
		}
		82 < .80
		82.file {
			width = 96c
			height = 96c
		}
		83 < .80
		83.file {
			width = 160c
			height = 160c
		}
		84 < .80
		84.file {
			width = 196c
			height = 196c
		}

		// Microsoft Application icons
		120 < .10
		120 {
			file {
				width = 70c
				height = 70c
			}
			stdWrap.dataWrap = <meta name="msapplication-square{TSFE:lastImgResourceInfo|0}x{TSFE:lastImgResourceInfo|1}logo" content="|"/>
		}
	}

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
	
	#70 = TEXT
	#70.value = <link href='http://fonts.googleapis.com/css?family=Lora:400,700,700italic,400italic' rel='stylesheet' type='text/css'>
	
	5220 < lib.hreflang
	5230 < lib.canonical
	# Integrate Google Analytics Tracking
	5300 = COA
	5300 {
		10 = TEXT
		10.value (
<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
		)
		20 = TEXT
		20.value = {$headerData.googleAnalytics.id}
		20.wrap = ga('create', '|', 'auto');
		30 = TEXT
		30.value (
ga('set', 'anonymizeIp', true);
ga('send', 'pageview');
</script>
		)
		stdWrap.if.isTrue = {$headerData.googleAnalytics.active}
	}
	#Integrate Piwik Tracking
	5400 = COA
	5400 {
		10 = TEXT
		10.value (
<script type="text/javascript">
var _paq = _paq || [];
_paq.push(['trackPageView']);
_paq.push(['enableLinkTracking']);
(function() {
		)
		20 = TEXT
		20 {
			value = {$headerData.piwik.tracker_url}
			wrap = var u="|";
		}
		25 = TEXT
		25.value = _paq.push(['setTrackerUrl', u+'piwik.php']);
		30 = TEXT
		30 {
			value = {$headerData.piwik.site_id}
			wrap = _paq.push(['setSiteId', |]);
		}
		40 = TEXT
		40.value (
var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
})();
</script>
		)
		stdWrap.if.isTrue = {$headerData.piwik.active}
	}
}