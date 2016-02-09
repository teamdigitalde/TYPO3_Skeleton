# Configuration for indexedsearch plugin
plugin.tx_indexedsearch {
	templateFile = {$filepaths.templates}Templates/indexedsearch.html
	forwardSearchWordsInResultLink = 0
	show {
		rules = 0
		advancedSearchLink = 0
	}
	search {
		rootPidList = 1
		exactCount = 1
	}
	_CSS_DEFAULT_STYLE >
	_DEFAULT_PI_VARS {
		results = 10
	}
}