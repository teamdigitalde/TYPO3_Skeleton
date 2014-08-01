# Copy basic menu object from TS template 'menu' so we don't have to repeat all that
menu.top < menu
menu.top {
  # Also show pages which have not-in-menu flag set in page properties
  #includeNotInMenu = 1
  
  # Create a menu out of the pages specifically listed under special.value
  special = directory
  special.value = {$menu.top.pages}
}
menu.maintop < menu
menu.maintop {
  # Also show pages which have not-in-menu flag set in page properties
  #includeNotInMenu = 1
  
  # Create a menu out of the pages specifically listed under special.value
  special = directory
  special.value = 10
  1.wrap = <ul class="twelve columns" id="mainnav">|</ul>
}


menu.hauptnavigation < menu
menu.hauptnavigation {
  # Also show pages which have not-in-menu flag set in page properties
  #includeNotInMenu = 1
  
  # Create a menu out of the pages specifically listed under special.value
  special = directory
  special.value = 9
  1.wrap = <ul class="twelve columns" id="hauptnavigation">|</ul>
}