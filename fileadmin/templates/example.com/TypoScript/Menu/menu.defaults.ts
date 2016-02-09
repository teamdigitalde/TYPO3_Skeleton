menu = HMENU
menu {
    
  1 = TMENU
  1 {
    wrap = <ul class="nav navbar-nav">|</ul>
    
    # Always unfold all sub-levels of the menu
    expAll = 1

    # Define the normal state (not active, not selected) of menu items
    # Using NO=1 to activate normal state is not necessary, but useful when copying
    NO = 1
    NO {
      # Use the page title field the title property on the A-tag, but only if the navigation title is set
      ATagTitle {
        field = title
        #fieldRequired = nav_title
      }
      
      # Use the option-split feature to generate a different wrap for the last item on a level of the menu
      # The last item on each level gets class="last" added for CSS styling purposes.
      wrapItemAndSub = <li class="level1 first x{field:uid}">|</li> |*| <li class="level1 x{field:uid}">|</li> |*| <li class="level1 last x{field:uid}">|</li>
      wrapItemAndSub.insertData = 1
                   
      # HTML-encode special characters according to the PHP-function htmlSpecialChars
      stdWrap.htmlSpecialChars = 1
    }
    
    IFSUB = 1
    IFSUB < .NO
    IFSUB.wrapItemAndSub = <li class="level1 dropdown first x{field:uid} subpfeil">|</li> |*| <li class="level1 dropdown x{field:uid} subpfeil">|</li> |*| <li class="level1 dropdown last x{field:uid} subpfeil">|</li>
    IFSUB.wrapItemAndSub.insertData = 1
	IFSUB.ATagParams = class="dropdown-toogle" data-toogle="dropdown"
  
    # Copy properties of normal to active state, and then add a CSS class for styling
    ACT < .NO
    ACT {
      ATagParams = class="active"
    }

    # Copy properties of normal to current state, and then add a CSS class for styling
    CUR < .NO
    CUR {
      ATagParams = class="selected"
    }
  }
}