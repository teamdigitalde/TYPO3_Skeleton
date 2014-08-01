# For the breadcrumb cObject we use a HMENU of the type 'rootline'
menu.breadcrumb = COA
menu.breadcrumb {
  10 = HMENU
  10 {
    # Select HMENU type 'special.rootline'
    special = rootline
  
    # Traverse the pagetree starting at the rootpage (0) and ending at the current page (-1)
    special.range = 0|-1
  
    # Pages which are excluded from the regular menus should still be shown in the breadcrumb
    includeNotInMenu = 1
  
    # This menu has only 1 level since this is a rootline-menu
    1 = TMENU
    1 {
      # Remove the ancient onfocus="blurLink(this);" from link tags
      noBlur = 1
    
      # Append spaces and >> to normal linked breadcrumb items
      NO.allWrap = |&#32;&raquo;&#32;
      NO.stdWrap.htmlSpecialChars = 1
    }
  }
}

menu.richbreadcrumb = COA
menu.richbreadcrumb.10 = TEXT
menu.richbreadcrumb.10.value = <p id="breadcrumblabel">Sie sind hier:</p>
menu.richbreadcrumb.20 = HMENU
menu.richbreadcrumb.20 {
  special = rootline
  special.range = 0|-1
  includeNotInMenu = 1
  1 = TMENU
  1 {
    noBlur = 1
    wrap = <ol aria-labelledby="breadcrumblabel">|</ol>
    NO.stdWrap.htmlSpecialChars = 1
    NO.wrapItemAndSub = <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="first">|</li>|*|<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb">|</li>|*|<li class="last" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">|</li>
    #NO.linkWrap = <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb">|</li>
    NO.ATagParams = itemprop="url"
    NO.stdWrap.wrap = <span itemprop="title">|</span>
    NO.ATagTitle.field = title
    NO.ATagTitle.noTrimWrap = | Zurück zu: |
    CUR = 1
    CUR.stdWrap.htmlSpecialChars = 1
    CUR.linkWrap = <li class="current" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">|</li>
    #CUR.doNotLinkIt = 1
  }
}
menu.breadcrumb >
menu.breadcrumb < menu.richbreadcrumb

# This condition checks whether a news article will be shown in single view
[globalVar = GP:tx_ttnews|tt_news > 0] && [globalVar = TSFE:id = {$plugin.tt_news.singlePid}]

menu.breadcrumb {
  # Render the current page as the normal state (linked) because we'll append the title of the news article
  10.1 {
    CUR = 1
    CUR < .NO
  }
  
  # Append the title of the news item. Using this example, the breadcrumb can be exented with
  # any other thinkable kind of data and logic
  20 = RECORDS
  20 {
    dontCheckPid = 1
    tables = tt_news
    source.data = GP:tx_ttnews|tt_news
    source.intval = 1
    conf.tt_news = TEXT
    conf.tt_news.field = title
    wrap = <span>|</span>
  }
}
# Else configure the breadcrumb for normal cases when no news article is shown
[else]

menu.breadcrumb {
  10.1 {
    # Add alternative, unlinked configuration for current page, which is always the last item in
    # the breadcrumb
    CUR = 1
    CUR.stdWrap.htmlSpecialChars = 1
    CUR.allWrap = <span>|</span>
  
    # Do not wrap a link around this item
    CUR.doNotLinkIt = 1
  }
}

[global]