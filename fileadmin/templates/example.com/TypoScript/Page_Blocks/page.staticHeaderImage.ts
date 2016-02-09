lib.staticHeaderImage = IMAGE
lib.staticHeaderImage {
  file {
    import = uploads/media/
    import {
      # wenn kein Bild auf Seite, dann suche rekursiv bis Bild gefunden
      override.data = levelmedia:-1, slide
      # Feld angeben, in welchem das Bild definiert ist
      field = media
      # angeben, die wievielte Datei in dem Feld abgerufen wird
      #listNum = 0
    }
    width = 682c
    height = 257c
    treatIdAsReference = 1
  }
  altText = Static Header Image
  stdWrap.typolink.parameter = 8
  stdWrap.typolink.title = Zurück zur Startseite
}

lib.headerImageFal = COA
lib.headerImageFal {
  10 = FILES
  10 {
    references{
      data = levelmedia:-1, slide
      #data = media
      treatIdAsReference = 1
    }
    renderObj = COA
    renderObj {
      10 = IMAGE
      10 {
        file {
          import.data = file:current:originalUid // file:current:uid
          width.field = imagewidth
          width.wrap = |m
          height.field = imageheight
          height.wrap = |m
        }
        titleText.data = file:current:title // file:current:alternative
        altText.data = file:current:alternative // file:current:title
      }
      stdWrap.wrap =|
    }
  }
}