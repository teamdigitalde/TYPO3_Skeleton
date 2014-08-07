# remove class="bodytext" from paragraphs
lib.parseFunc_RTE {
  nonTypoTagStdWrap.encapsLines {
    addAttributes.P.class >
    addAttributes.P.class.setOnly >
  }
}