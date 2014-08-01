# Make the PAGE object
page = PAGE
page {
  # Regular pages always have typeNum = 0
  typeNum = 0
  
  # Add the icon that will appear in front of the url in the browser
  # This icon will also be used for the bookmark menu in browsers
  shortcutIcon = {$filepaths.images}favicon.ico
  
  # Add class to bodytag to select which columns will be used in the HTML template
  # Labels for the values used in this field are defined in the TSconfig field of the root page of the website
  bodyTagCObject = CASE
  bodyTagCObject {
    # The value of the CASE object will depend on the value of the layout field in the page records
    key.field = layout
    
    # Define the default value
    default = TEXT
    default.value = <body>
    
    # Copy the default value to 0
    0 < .default
    
    # Add different values for cases 1, 2 and 3
    1 = TEXT
    1.wrap = <body class="|">
    1.value = hideRightColumn
    
    2 < .1
    2.value = hideLeftColumn
    
    3 < .1
    3.value = hideRightAndLeftColumn
  }
  
}