menu.language = HMENU
menu.language {
  special = language
  special.value = 0,1
  1 = TMENU
  1 {
    wrap = <ul>|</ul>
    NO = 1
    NO {
      doNotLinkIt = 1
      # Override the standard menu item value (which is the page title) with our own cObject
      stdWrap.cObject = TEXT
      stdWrap.cObject {
        # Use the TypoScript option split function to display different values for the first and second item
        # otherwise the page title is shown
        value = {$contentpage.language1} || {$contentpage.language2}
        # now build the link with the defined GET-Parameters in Constants.ts
        typolink {
          parameter.data = TSFE:id
          # copy authorized additionalParams
          additionalParams < lib.currentUrl.10.typolink.additionalParams
          additionalParams.cObject {
            # also add L-vars (should be the same as above)
            10 = TEXT
            10.value = &L=0 || &L=1
          }
        }
      }
      allWrap = <li>|</li>
    }
    ACT < .NO
    ACT {
      ATagParams = class="active"
    }
  }
}