# remove class="bodytext" from paragraphs
lib.parseFunc_RTE {
  nonTypoTagStdWrap.encapsLines {
    addAttributes.P.class >
    addAttributes.P.class.setOnly >
  }
}

# Tabellen Klasse anzeigen
lib.parseFunc_RTE.externalBlocks.table.stdWrap.HTMLparser.tags.table.fixAttrib.class.list := addToList(dieverwendeteklasse)