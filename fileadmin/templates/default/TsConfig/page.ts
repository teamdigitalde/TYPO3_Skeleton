# Add the following uncommented line, to the website's root page Resources > TypoScript Configuration to include this file
# <INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/default/TSConfig/page.ts">

#wo liegen die Backend Layouts?
TCEFORM.pages.backend_layout.PAGE_TSCONFIG_ID = 13
TCEFORM.pages.backend_layout_next_level.PAGE_TSCONFIG_ID = 13

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
/*
##frames
TCEFORM.tt_content.section_frame{
	addItems {
		30 = Frame 3, width 2/3
		31 = Frame 4, width 1/3
	}
}
*/

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
