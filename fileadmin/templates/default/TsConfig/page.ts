# Add the following uncommented line, to the website's root page Resources > TypoScript Configuration to include this file
# <INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/default/TSConfig/page.ts">

#wo liegen die Backend Layouts?
TCEFORM.pages.backend_layout.PAGE_TSCONFIG_ID = 13
TCEFORM.pages.backend_layout_next_level.PAGE_TSCONFIG_ID = 13

# Text -> "Kopie1" entfernen
TCEMAIN.table.pages.disablePrependAtCopy = 1
TCEMAIN.table.tt_content.disablePrependAtCopy = 1

# Text -> "Translate to" entfernen
TCEMAIN.translateToMessage = 

# Set the default label and flag
mod.SHARED.defaultLanguageLabel = deutsch
mod.SHARED.defaultLanguageFlag = de

# Show the content element wizard with tabs (for consistency)
mod.wizards.newContentElement.renderMode = tabs

TCEFORM {
	pages {
		layout {
			# Rename the default options for the layout field in table pages
			altLabels.0 = Standard 3 columns
			altLabels.1 = Columns left & main
			altLabels.2 = Columns main & right
			altLabels.3 = Column main only
		}
		# There is no need for the Alias field in page properties when we use RealURL
		alias.disabled = 1
	}

	tt_content {
		# Remove the 'border' option from selectbox 'column' in content records
		colPos.keepItems = 1,0,2
	}
}

# Neuen Rahmen hinzufügen, bestehende entfernen
TCEFORM.tt_content.section_frame {
     removeItems = 1,5,6,10,11,12,20,21
     #addItems.100 = example
     #altLabels.100 = example
}

  // If an editor creates a page it should be visible to all editors and admins
TCEMAIN {
	  // group "all users"
	permissions.groupid = 1

	user = show,edit,delete,new,editcontent
	group = show,edit,delete,new,editcontent
	everybody =
}

// better wording for header layouts
TCEFORM.tt_content.header_layout {
  altLabels {
    1 = LLL:EXT:rtehtmlarea/locallang.xml:Heading 1
    2 = LLL:EXT:rtehtmlarea/locallang.xml:Heading 2
    3 = LLL:EXT:rtehtmlarea/locallang.xml:Heading 3
    4 = LLL:EXT:rtehtmlarea/locallang.xml:Heading 4
    5 = LLL:EXT:rtehtmlarea/locallang.xml:Heading 5
    6 = LLL:EXT:rtehtmlarea/locallang.xml:Heading 6
  }
  removeItems = 0
  addItems.200 = Überschrift ohne H-Tag
}

# Use different views for the news plugin, those entries show up in the news content element configuration
tx_news.templateLayouts {
	normal = Normal
	latest = Latest
	# You can even translate those if you create a custom ll-xml file.
	#custom = fileadmin/Language/news-templates.xml:keyForCustom
}

# Condition for news storage folder
[PIDinRootline = 18]
	mod.web_list {
		# Limit the creation of new records in this sysFolder to these types
		allowedNewTables = tx_news_domain_model_news,tx_news_domain_model_category,sys_note
	}

	# This will open the news singleView page (id 23) when clicking 'preview' for a news record
	tx_news.singlePid = 23


	TCEMAIN {
		# Clear cache of the News page after content of the News folder has changed
		clearCacheCmd = 23,30
		clearCache_pageSiblingChildren = 1
	}
[END]

# Condition for frontend user storage folder
[PIDinRootline = 29]
	mod.web_list {
		# limit the creation of new records in this sysFolder to these types
		allowedNewTables = fe_groups,fe_users,sys_note
	}
[END]

#### RTE  ###

# activate pastetoggle and hide button
RTE.default.buttons.pastetoggle.setActiveOnRteOpen = 1
#dont hide per default, unusable with html-tags in predefined-context #RTE.default.buttons.pastetoggle.hidden = 1

RTE.default {
	## "Zauberbild" ausblenden
	contentCSS = {$filepaths.css}rte.css
	showTagFreeClasses = 1
	showButtons = *
	hideButtons = textindicator, user, fontstyle, fontsize,  inserttag, strikethrough,lefttoright, righttoleft, textcolor, bgcolor, underline, emoticon, spellcheck,  justifyfull, subscript, superscript, copy, cut, paste, findreplace, about, showhelp,blockquote, insertparagraphbefore, insertparagraphafter, lefttoright, righttoleft, language,showlanguagemarks,definitionlist, definitionitem,editelement, showmicrodata, insertsofthyphen
	keepButtonGroupTogether = 1
	#hidePStyleItems = ADDRESS, H1, PRE, DIV  
	buttons { 
		image.options.removeItems = magic,dragdrop
		formatblock.removeItems = ADDRESS, H1, PRE, DIV 
		textstyle.tags.span.allowedClasses := addToList(kleiner, groesser-125, groesser-150)
		blockstyle.tags.div.allowedClasses := addToList()
		blockstyle.tags.table.allowedClasses := addToList()
		blockstyle.tags.td.allowedClasses := addToList()
		image.properties.class.allowedClasses := addToList()
		link.properties.class.allowedClasses := addToList()
		blockstyle.showTagFreeClasses = 1
		textstyle.showTagFreeClasses = 1
		pastetoggle.setActiveOnRteOpen = 1
		pastetoggle.hidden = 1
	}
	allowedClasses := addToList(align-left, align-center, align-right, align-justify, indent, links-kasten, kleiner, groesser-125, groesser-150)
	## Markup options (htmlArea RTE only)
	enableWordClean = 1
	removeTrailingBR = 1
	removeComments = 1
	removeTags = center, o:p, sdfield
	removeTagsAndContents = style, script
 
	proc {
		allowedClasses < RTE.default.allowedClasses
		allowTags := addToList(code, thead, abbr, acronym)
		entryHTMLparser_db = 1
		entryHTMLparser_db {
			tags {
				# b und i Tags werden ersetzt (em / strong)
				b.remap = strong
				i.remap = em
			}
		}
		exitHTMLparser_db = 1
		exitHTMLparser_db {
			tags.b.remap = strong
			tags.i.remap = em
		}
	}
	
	FE {
		proc {
			allowedClasses < RTE.default.allowedClasses
			allowTags < RTE.default.allowTags
		}
	}
	# Do not allow insertion of the following tags
	hideTags = font
		
	## Configuration specific to the table button or TableOperations feature (htmlArea RTE only)
	## Use the context menu instead of the toolbar for table operations, but keep toggleborders button in toolbar
	hideTableOperationsInToolbar = 1
	buttons.toggleborders.keepInToolbar = 1
	
	## Tabellen Editierungs-Optionen (cellspacing/ cellpadding / border)
	disableSpacingFieldsetInTableOperations=0
	disableAlignmentFieldsetInTableOperations=1
	disableColorFieldsetInTableOperations=1
	disableLayoutFieldsetInTableOperations=0
	disableBordersFieldsetInTableOperations=0
}

RTE.classes {
	align-justify {
		name = Blocksatz
		value = text-align: justify;
	}
	indent {
		name = Eingerückt
		value = padding-left: 10px;
	}
	kleiner {
		name = Schrift kleiner
	}
	groesser-125{
		name = Schrift 125%
	}
	groesser-150{
		name = Schrift 150%
	} 
}  

RTE {   
	classesAnchor {     
		externalLink {       
			altText =       
			titleText =     
		}     
		externalLinkInNewWindow {       
			altText =       
			titleText = 	     
		}     
		internalLink {       
			altText =       
			titleText = 	     
		}     
		internalLinkInNewWindow {       
			altText =       
			titleText =     
		}      
		download {       
			altText =       
			titleText =     
		}     
		mail {       
			altText =        
			titleText =      
		}   
	} 
} 
