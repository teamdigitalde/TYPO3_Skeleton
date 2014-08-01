# Add the following uncommented line, to the website's root page Resources > TypoScript Configuration to include this file
# <INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/default/TypoScript/System/lib.parseFunc_RTE.ts">

# remove class="bodytext" from paragraphs
lib.parseFunc_RTE {
  nonTypoTagStdWrap.encapsLines {
    addAttributes.P.class >
    addAttributes.P.class.setOnly >
  }
}