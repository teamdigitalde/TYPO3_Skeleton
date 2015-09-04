# This menu is slightly more complicated than the others because we copy our default menu again, but then we'll start overriding some settings from the default menu.
# To get a full overview of the configuration of this menu you should look at our default 'menu'.
# You can use the TypoScript Object Browser to view the end result of this.
# (go to the Template module and select 'Typoscript Object Browser' in the selectbox in the right frame.)

menu.firstAndSecondLevel < menu
menu.firstAndSecondLevel {
  1 {
    expAll = 1
    wrap = <ul class="nav navbar-nav">|</ul>
	IFSUB < .NO
    IFSUB {
      wrapItemAndSub = <li class="level1 dropdown first x{field:uid}">|</li> |*| <li class="level1 dropdown  x{field:uid}">|</li> |*| <li class="level1 last dropdown x{field:uid}">|</li>
      wrapItemAndSub.insertData = 1
	  ATagParams = class="dropdown-toggle" data-toggle="dropdown"
    }
    ACTIFSUB < .IFSUB
    CURIFSUB < .IFSUB
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
}