# For the breadcrumb cObject we use a HMENU of the type 'rootline'
menu.breadcrumb = COA
menu.breadcrumb.10 = TEXT
menu.breadcrumb.10.value = <span id="breadcrumblabel">Sie sind hier:</span>
menu.breadcrumb.20 = HMENU
menu.breadcrumb.20 {
  special = rootline
  special.range = 0|-1
  includeNotInMenu = 1
  1 = TMENU
  1 {
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