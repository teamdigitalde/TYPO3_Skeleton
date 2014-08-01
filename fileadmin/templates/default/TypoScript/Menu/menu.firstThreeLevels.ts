menu.firstThreeLevels < menu
menu.firstThreeLevels {
  1 {
    expAll = 1
    wrap = <ul class="twelve columns">|</ul>
  }
  
  # Copy the configuration of the first level of this menu to level 2
  2 < .1
  2 {
    NO.wrapItemAndSub = <li class="level2 first x{field:uid}">|</li> |*| <li class="level2 x{field:uid}">|</li> |*| <li class="level2 last x{field:uid}">|</li>
    CUR.wrapItemAndSub = <li class="level2 first x{field:uid}">|</li> |*| <li class="level2 x{field:uid}">|</li> |*| <li class="level2 last x{field:uid}">|</li>
    ACT.wrapItemAndSub = <li class="level2 first x{field:uid}">|</li> |*| <li class="level2 x{field:uid}">|</li> |*| <li class="level2 last x{field:uid}">|</li>
  }

  3 < .1
  3 {
    NO.wrapItemAndSub = <li class="level3 first x{field:uid}">|</li> |*| <li class="level3 x{field:uid}">|</li> |*| <li class="level3 last x{field:uid}">|</li>
    CUR.wrapItemAndSub = <li class="level3 first x{field:uid}">|</li> |*| <li class="level3 x{field:uid}">|</li> |*| <li class="level3 last x{field:uid}">|</li>
    ACT.wrapItemAndSub = <li class="level3 first x{field:uid}">|</li> |*| <li class="level3 x{field:uid}">|</li> |*| <li class="level3 last x{field:uid}">|</li>
  }
}