lib.content < styles.content.get
lib.content {
  # Wrap it in the markers for the search engine, so it knows that this part has to be indexed
  stdWrap.wrap = <!--TYPO3SEARCH_begin--> | <!--TYPO3SEARCH_end-->
}

lib.renderCE = RECORDS
lib.renderCE {
  source.current = 1
  tables = tt_content
}



### zusätzliche rahmen ###
tt_content.stdWrap.innerWrap.cObject {
  100 =< tt_content.stdWrap.innerWrap.cObject.default
  100.20.10.value = kasten
  200 =< tt_content.stdWrap.innerWrap.cObject.default
  200.20.10.value = sprechblase
}

### Dateiliste Größenangaben ###
tt_content.uploads.20.renderObj.40.bytes.labels = Byte | kB | MB | GB