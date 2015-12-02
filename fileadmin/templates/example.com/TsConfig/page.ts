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

# Bild und Spalten -> Text mit Bild
# Bildposition "Oben links"
mod.wizards.newContentElement.wizardItems.common.elements.textpic.tt_content_defValues.imageorient = 2
# Anzahl der Spalten auf 1
mod.wizards.newContentElement.wizardItems.common.elements.textpic.tt_content_defValues.imagecols = 0

# Bild und Spalten -> Bild
# Bildposition "Oben links"
mod.wizards.newContentElement.wizardItems.common.elements.image.tt_content_defValues.imageorient = 2
# Anzahl der Spalten auf 1
mod.wizards.newContentElement.wizardItems.common.elements.image.tt_content_defValues.imagecols = 0

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

# Layouts hinzufügen, bestehende entfernen
TCEFORM.tt_content {
    layout {
        altLabels {
           # 1 = Beispiel 1
           # 2 = Beispiel 2
        }
        # Bei Bedarf anpassen
        removeItems = 1,2,3,4,5,6,7,9,10
    }
}


  // If an editor creates a page it should be visible to all editors and admins
TCEMAIN {
	permissions {
		// group "all users"
		groupid = 1

		user = show,edit,delete,new,editcontent
		group = show,edit,delete,new,editcontent
		everybody =
	}
}

// better wording for header layouts
TCEFORM.tt_content.header_layout {
  altLabels {
    1 = LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang.xlf:Heading 1
    2 = LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang.xlf:Heading 2
    3 = LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang.xlf:Heading 3
    4 = LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang.xlf:Heading 4
    5 = LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang.xlf:Heading 5
    6 = LLL:EXT:rtehtmlarea/Resources/Private/Language/locallang.xlf:Heading 6
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

#### RTE  ###

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
	fauxHeadline {
		name = Überschrift ohne H-Tag
		} 
}

# activate pastetoggle and hide button
RTE.default.buttons.pastetoggle.setActiveOnRteOpen = 1
#dont hide per default, unusable with html-tags in predefined-context #RTE.default.buttons.pastetoggle.hidden = 1

RTE.default {
	contentCSS = fileadmin/templates/example.com/Css/rte.css
	showButtons = *
	hideButtons = textindicator, user, fontstyle, fontsize,  inserttag, strikethrough,lefttoright, righttoleft, textcolor, bgcolor, underline, emoticon, spellcheck,  justifyfull, subscript, superscript, copy, cut, paste, findreplace, about, showhelp,blockquote, insertparagraphbefore, insertparagraphafter, lefttoright, righttoleft, language,showlanguagemarks,definitionlist, definitionitem,editelement, showmicrodata, insertsofthyphen
	keepButtonGroupTogether = 1
	buttons { 
		image.options {
			# remove magic and dragdrop images
			removeItems = magic,dragdrop
			# set new filesize for images in RTE
			magic.maxWidth = 1000
			plain.maxWidth = 1000
		}
		formatblock.removeItems = ADDRESS, PRE, DIV, FOOTER, SECTION, ASIDE, BLOCKQUOTE, ARTICLE, HEADER, NAV 
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
	allowedClasses := addToList(align-left, align-center, align-right, align-justify, indent, kleiner, groesser-125, groesser-150)
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
