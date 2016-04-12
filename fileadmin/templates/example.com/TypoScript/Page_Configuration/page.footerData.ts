page.footerData {
	5400 = COA
	5400 {
		20 = TEXT
		20 {
			value = {$headerData.piwik.tracker_url}
			wrap = <noscript><p><img src="|
		}
		30 = TEXT
		30 {
			value = {$headerData.piwik.site_id}
			wrap = piwik.php?idsite=|" style="border:0;" alt="" /></p></noscript>
		}
		stdWrap.if.isTrue = {$headerData.piwik.active}
	}
}