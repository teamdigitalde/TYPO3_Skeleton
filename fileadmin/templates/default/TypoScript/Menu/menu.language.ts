menu.language = HMENU
menu.language {
  special = language
  special.value = 0,1
  1 = TMENU
  1 {
    wrap = <ul>|</ul>
    
    NO = 1
    NO {
      # Override the standard menu item value (which is the page title) with our own cObject
      stdWrap.cObject = TEXT
      
      # Use the TypoScript option split function to display different values for the first and second item
      stdWrap.cObject.value = {$contentpage.language1} || {$contentpage.language2}
      allWrap = <li>|</li>
    }
    
    ACT < .NO
    ACT {
      ATagParams = class="active"
    }
  }
}