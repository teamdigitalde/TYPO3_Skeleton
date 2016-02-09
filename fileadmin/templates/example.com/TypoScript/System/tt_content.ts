tt_content {  
  # Define different wrappers for content elements depending on the page column
  stdWrap.outerWrap.cObject = CASE
  stdWrap.outerWrap.cObject {
    # Define wrappers for each column position (colPos 0,1,2,3)
    key.field = colPos
    
    # Default is no wrapper
    default = TEXT
    default.value = |
    
    # Add wrapper for content in right column (colPos=2)
    # we use this to style the box around content in this column
    /*
    2 = CASE
    2 {
      # Add wrapping to all content elements
      default = TEXT
      default.value = <div class="secondaryContentSection">|</div>
      
      # But - exclude inserted records from being wrapped
      key.field = CType
      shortcut = TEXT
      shortcut.value = |
      image = TEXT
      image.value = |
      html = TEXT
      html.value = |
    }
    */

  }
  
  #image.20.maxW.cObject = CASE
  #image.20.maxW.cObject {
  #  key.field = colPos
  #  0 = CASE
  #  0 {
  #    key.data = levelfield:-1,backend_layout_next_level,slide
  #    key.override.data = page:backend_layout
  #    1 = TEXT
  #    1.value = 679
  #    2 = TEXT
  #    2.value = 446
  #    3 < .1
  #  }
  #  2 = CASE
  #  2 {
  #    key.data = levelfield:-1,backend_layout_next_level,slide
  #    key.override.data = page:backend_layout
  #    default = TEXT
  #    default.value = 213
  #  }
  #}
}