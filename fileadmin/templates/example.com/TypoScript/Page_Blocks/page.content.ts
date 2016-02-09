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

# Neue Layouts Hinzufügen
tt_content.stdWrap.innerWrap.cObject = CASE
tt_content.stdWrap.innerWrap.cObject {
	key.field = layout
	100 = TEXT
	100.value = <div class="example1">|</div>
	200 = TEXT
	200.value = <div class="example2">|</div>
    }


### Dateiliste Größenangaben ###
tt_content.uploads.20.renderObj.40.bytes.labels = Byte | kB | MB | GB

### Einbindung headerbild / Headerslider ###
lib.headerslideshow < styles.content.get
lib.headerslideshow {
	select.where = colPos=3
	stdWrap.required = 1
	slide = -1
	}
