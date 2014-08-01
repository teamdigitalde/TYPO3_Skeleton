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
  }
  altText = Fritz Sanitär Stockhausen
  stdWrap.typolink.parameter = 8
  stdWrap.typolink.title = Zurück zur Startseite
} 