lib.currentUrl= COA
lib.currentUrl {
	10 = TEXT
	10.typolink {
		parameter.data = TSFE:id
		returnLast = url
		forceAbsoluteUrl = 1
		useCacheHash = 1
		additionalParams.cObject = COA
		additionalParams.cObject {
			# EXT:tt_news
			10 = TEXT
			10.dataWrap = &tx_ttnews[tt_news]={GP:tx_ttnews|tt_news}
			10.if.isTrue.data = GP:tx_ttnews|tt_news
			20 = TEXT
			20.dataWrap = &tx_ttnews[cat]={GP:tx_ttnews|cat}
			20.if.isTrue.data = GP:tx_ttnews|cat
			#EXT:news
			100 = TEXT
			100.dataWrap = &tx_news_pi1[news]={GP:tx_news_pi1|news}
			100.if.isTrue.data = GP:tx_news_pi1|news
			110 = TEXT
			110.dataWrap = &tx_news_pi1[controller]={GP:tx_news_pi1|controller}
			110.if.isTrue.data = GP:tx_news_pi1|controller
			120 = TEXT
			120.dataWrap = &tx_news_pi1[action]={GP:tx_news_pi1|action}
			120.if.isTrue.data = GP:tx_news_pi1|action
			#EXT:cal
			200 = TEXT
			200.dataWrap = &tx_cal_controller[view]={GP:tx_cal_controller|view}
			200.if.isTrue.data = GP:tx_cal_controller|view
			210 = TEXT
			210.dataWrap = &tx_cal_controller[type]={GP:tx_cal_controller|type}
			210.if.isTrue.data = GP:tx_cal_controller|type
			220 = TEXT
			220.dataWrap = &tx_cal_controller[uid]={GP:tx_cal_controller|uid}
			220.if.isTrue.data = GP:tx_cal_controller|uid
			230 = TEXT
			230.dataWrap = &tx_cal_controller[year]={GP:tx_cal_controller|year}
			230.if.isTrue.data = GP:tx_cal_controller|year
			240 = TEXT
			240.dataWrap = &tx_cal_controller[month]={GP:tx_cal_controller|month}
			240.if.isTrue.data = GP:tx_cal_controller|month
			250 = TEXT
			250.dataWrap = &tx_cal_controller[day]={GP:tx_cal_controller|day}
			250.if.isTrue.data = GP:tx_cal_controller|day
			260 = TEXT
			260.dataWrap = &tx_cal_controller[getdate]={GP:tx_cal_controller|getdate}
			260.if.isTrue.data = GP:tx_cal_controller|getdate
			270 = TEXT
			270.dataWrap = &tx_cal_controller[categorySelection]={GP:tx_cal_controller|categorySelection}
			270.if.isTrue.data = GP:tx_cal_controller|categorySelection
			280 = TEXT
			280.dataWrap = &tx_cal_controller[category][0]={GP:tx_cal_controller|category|0}
			280.if.isTrue.data = GP:tx_cal_controller|category|9
		}
	}
}

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
						additionalParams.cObject.10 = TEXT
						additionalParams.cObject.10.value = &L=0 || &L=1 || &L=2
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
	
	60 = TEXT
	60.value = <script gumby-touch="{$filepaths.scripts}libs" src="{$filepaths.scripts}libs/gumby.min.js"></script>
	
	#70 = TEXT
	#70.value = <link href='http://fonts.googleapis.com/css?family=Lora:400,700,700italic,400italic' rel='stylesheet' type='text/css'>
	
	5220 < lib.hreflang
	5230 < lib.canonical
}