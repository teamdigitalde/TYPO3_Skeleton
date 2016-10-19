menu.firstFourLevels = HMENU
menu.firstFourLevels {
  1 = TMENU
  1 {
    expAll = 1
    NO = 1
    NO {
      # Use the page title field the title property on the A-tag, but only if the navigation title is set
      ATagTitle {
        field = title
        #fieldRequired = nav_title
      }
      wrapItemAndSub = <li class="level1 first x{field:uid}">|</li> |*| <li class="level1 x{field:uid}">|</li> |*| <li class="level1 last x{field:uid}">|</li>
      wrapItemAndSub.insertData = 1
                   
      # HTML-encode special characters according to the PHP-function htmlSpecialChars
      stdWrap.htmlSpecialChars = 1
    }
    ACT = 1
    ACT.wrapItemAndSub = <li class="active level1 first x{field:uid}">|</li>
	ACT.wrapItemAndSub.insertData = 1
    ACT.ATagTitle.field = abstract // description // title
 
    IFSUB = 1
    IFSUB.wrapItemAndSub = <li class="dropdown level1 first x{field:uid}">|</li> |*| <li class="dropdown level1 x{field:uid}">|</li> |*| <li class="dropdown level1 last x{field:uid}">|</li>
	IFSUB.wrapItemAndSub.insertData = 1
    IFSUB.ATagTitle.field = abstract // description // title
    IFSUB.ATagParams = class="dropdown-toogle" data-toogle="dropdown"
 
    ACTIFSUB = 1
    ACTIFSUB.wrapItemAndSub = <li class="dropdown active level1 x{field:uid}">|</li>
    ACTIFSUB.wrapItemAndSub.insertData = 1
    ACTIFSUB.ATagTitle.field = abstract // description // title
    ACTIFSUB.ATagParams = class="dropdown-toogle" data-toogle="dropdown"
 
    wrap = <ul class="nav navbar-nav">|</ul>
  }
  2 < .1
  2 {
    
	NO.wrapItemAndSub = <li class="level2 first x{field:uid}">|</li> |*| <li class="level2 x{field:uid}">|</li> |*| <li class="level2 last x{field:uid}">|</li>
	
    ACT = 1
    ACT.wrapItemAndSub = <li class="active level2 first x{field:uid}">|</li>
	ACT.wrapItemAndSub.insertData = 1
    ACT.ATagTitle.field = abstract // description // title
	
	IFSUB = 1
    IFSUB.wrapItemAndSub = <li class="dropdown-submenu level2 x{field:uid}">|</li>
	IFSUB.wrapItemAndSub.insertData = 1
    IFSUB.ATagParams = class="dropdown-toogle" data-toogle="dropdown"
	
    ACTIFSUB = 1
    ACTIFSUB.wrapItemAndSub = <li class="dropdown-submenu active level2 x{field:uid}">|</li>
	ACTIFSUB.wrapItemAndSub.insertData = 1
    ACTIFSUB.ATagTitle.field = abstract // description // title
	
    wrap = <ul class="dropdown-menu">|</ul>
  }
 
  3 < .2
  3 {
	
	NO.wrapItemAndSub = <li class="level3 first x{field:uid}">|</li> |*| <li class="level3 x{field:uid}">|</li> |*| <li class="level3 last x{field:uid}">|</li>
	
    ACT = 1
    ACT.wrapItemAndSub = <li class="active level3">|</li>
    ACT.ATagTitle.field = abstract // description // title
	
  	wrap = <ul class="dropdown-menu">|</ul>
  }
  
  4 < .2
  4 {
	
	NO.wrapItemAndSub = <li class="level4 first x{field:uid}">|</li> |*| <li class="level4 x{field:uid}">|</li> |*| <li class="level4 last x{field:uid}">|</li>
	
    ACT = 1
    ACT.wrapItemAndSub = <li class="active level4">|</li>
    ACT.ATagTitle.field = abstract // description // title
	
  	wrap = <ul class="dropdown-menu">|</ul>
  }
}