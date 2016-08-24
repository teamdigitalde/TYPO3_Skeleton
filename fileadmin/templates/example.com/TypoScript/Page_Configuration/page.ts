# Make the PAGE object
page = PAGE
page {
  # Regular pages always have typeNum = 0
  typeNum = 0
  
  # Add the icon that will appear in front of the url in the browser
  # This icon will also be used for the bookmark menu in browsers
  shortcutIcon = {$filepaths.images}favicon.ico  
	bodyTag >
	bodyTagCObject < lib.bodyTag
	
	10 = FLUIDTEMPLATE
	10 {
		partialRootPath = {$filepaths.templates}Partials/
		layoutRootPath = {$filepaths.templates}Layouts/
		
		file.stdWrap.cObject = CASE
		file.stdWrap.cObject {
			key.data = levelfield:-1, backend_layout_next_level, slide
			key.override.field = backend_layout
			default = TEXT
			default.value = {$filepaths.templates}Templates/Layout1.html
			2 = TEXT
			2.value = {$filepaths.templates}Templates/Layout2.html
			3 = TEXT
			3.value = {$filepaths.templates}Templates/Layout3.html
		}
		
		# fill the subparts and markers
		variables {    
			# Insert menu's from lib-objects into the appropriate subparts
			mainMenu < menu.firstFourLevels
			topMenu < menu.top
			headerslideshow < lib.headerslideshow
			backend_layout < lib.backend_layout
			layoutclass < lib.layoutSwitch
			
			# Insert content as already constructed in TypoScript objects into subparts
			content_col0 < styles.content.get
			content_col1 < styles.content.get
			content_col1.select.where = colPos=1
			content_col2 < styles.content.get
			content_col2 {
				select.where = colPos=2
				stdWrap.required = 1
				slide = -1
			}
		}
	}
}

