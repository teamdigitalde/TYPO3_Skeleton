menu.firstFourLevels < menu
menu.firstFourLevels {
  1 {
    expAll = 1
    wrap = <ul class="nav navbar-nav">|</ul>
	IFSUB < .NO
    IFSUB {
      wrapItemAndSub = <li class="level1 dropdown first x{field:uid}">|<span class="dropdown-toggle" data-toggle="dropdown"><b class="caret"></b></span></li> |*| <li class="level1 dropdown  x{field:uid}">|<span class="dropdown-toggle" data-toggle="dropdown"><b class="caret"></b></span></li> |*| <li class="level1 last dropdown x{field:uid}">|<span class="dropdown-toggle" data-toggle="dropdown"><b class="caret"></b></span></li>
      wrapItemAndSub.insertData = 1
    }
    ACTIFSUB < .IFSUB
    ACTIFSUB.ATagParams = class="active"
    CURIFSUB < .ACTIFSUB
    CURIFSUB.ATagParams = class="selected"
  }
  
  # Copy the configuration of the first level of this menu to level 2
  2 < .1
  2.wrap = <ul class="dropdown-menu">|</ul>
  2 {
    NO.wrapItemAndSub = <li class="level2 first x{field:uid}">|</li> |*| <li class="level2 x{field:uid}">|</li> |*| <li class="level2 last x{field:uid}">|</li>
    CUR.wrapItemAndSub = <li class="level2 first x{field:uid}">|</li> |*| <li class="level2 x{field:uid}">|</li> |*| <li class="level2 last x{field:uid}">|</li>
    ACT.wrapItemAndSub = <li class="level2 first x{field:uid}">|</li> |*| <li class="level2 x{field:uid}">|</li> |*| <li class="level2 last x{field:uid}">|</li>
	IFSUB < .NO
    IFSUB {
      wrapItemAndSub = <li class="level2 dropdown-submenu first x{field:uid}">|</li> |*| <li class="level2 dropdown-submenu  x{field:uid}">|</li> |*| <li class="level2 last dropdown-submenu x{field:uid}">|</li>
      wrapItemAndSub.insertData = 1
	  ATagParams = class="dropdown-toggle" data-toggle="dropdown"
    }
    ACTIFSUB < .IFSUB
    CURIFSUB < .IFSUB
  }

  3 < .1
  3.wrap = <ul class="dropdown-menu">|</ul>
  3 {
    NO.wrapItemAndSub = <li class="level3 first x{field:uid}">|</li> |*| <li class="level3 x{field:uid}">|</li> |*| <li class="level3 last x{field:uid}">|</li>
    CUR.wrapItemAndSub = <li class="level3 first x{field:uid}">|</li> |*| <li class="level3 x{field:uid}">|</li> |*| <li class="level3 last x{field:uid}">|</li>
    ACT.wrapItemAndSub = <li class="level3 first x{field:uid}">|</li> |*| <li class="level3 x{field:uid}">|</li> |*| <li class="level3 last x{field:uid}">|</li>
	IFSUB < .NO
    IFSUB {
      wrapItemAndSub = <li class="level3 dropdown-submenu first x{field:uid}">|</li> |*| <li class="level3 dropdown-submenu  x{field:uid}">|</li> |*| <li class="level3 last dropdown-submenu x{field:uid}">|</li>
      wrapItemAndSub.insertData = 1
	  ATagParams = class="dropdown-toggle" data-toggle="dropdown"
    }
    ACTIFSUB < .IFSUB
    CURIFSUB < .IFSUB
  }
  4 < .1
  4.wrap = <ul class="dropdown-menu">|</ul>
  4 {
    NO.wrapItemAndSub = <li class="level4 first x{field:uid}">|</li> |*| <li class="level4 x{field:uid}">|</li> |*| <li class="level4 last x{field:uid}">|</li>
    CUR.wrapItemAndSub = <li class="level4 first x{field:uid}">|</li> |*| <li class="level4 x{field:uid}">|</li> |*| <li class="level4 last x{field:uid}">|</li>
    ACT.wrapItemAndSub = <li class="level4 first x{field:uid}">|</li> |*| <li class="level4 x{field:uid}">|</li> |*| <li class="level4 last x{field:uid}">|</li>
	IFSUB < .NO
    IFSUB {
      wrapItemAndSub = <li class="level4 dropdown-submenu first x{field:uid}">|</li> |*| <li class="level4 dropdown-submenu  x{field:uid}">|</li> |*| <li class="level4 last dropdown-submenu x{field:uid}">|</li>
      wrapItemAndSub.insertData = 1
	  ATagParams = class="dropdown-toggle" data-toggle="dropdown"
    }
    ACTIFSUB < .IFSUB
    CURIFSUB < .IFSUB 
  }
}