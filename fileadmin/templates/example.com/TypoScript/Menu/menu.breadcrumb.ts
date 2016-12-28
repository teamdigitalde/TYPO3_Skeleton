# For the breadcrumb cObject we use a HMENU of the type 'rootline'
menu.breadcrumb = COA
menu.breadcrumb.wrap = <ol aria-labelledby="breadcrumblabel">|</ol>
menu.breadcrumb.10 = TEXT
menu.breadcrumb.10.value = <li id="breadcrumblabel">Sie sind hier:</li>
menu.breadcrumb.20 = HMENU
menu.breadcrumb.20 {
  special = rootline
  special.range = 0|-1
  includeNotInMenu = 1
  1 = TMENU
  1 {
    NO.stdWrap.htmlSpecialChars = 1
    NO.wrapItemAndSub = <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="first">|</li>|*|<li itemscope itemtype="http://data-vocabulary.org/Breadcrumb">|</li>|*|<li class="last" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">|</li>
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

## Über die Condition wird erreicht, dass der Code nur dann ausgeführt wird,
## wenn eine Seite mit der News-Detailansicht aufgerufen ist.
[globalVar = GP:tx_news_pi1|news > 0]
  menu.breadcrumb {
    20.1.NO.doNotLinkIt = 0
    20.1.NO.allWrap = <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb">|</li>
    20.1.CUR {
      linkWrap = <li class="cur" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">|</li>
      doNotLinkIt = 1
      doNotShowLink = 1
    }

    30 = RECORDS
    30 {
      dontCheckPid = 1
      tables = tx_news_domain_model_news
      source.data = GP:tx_news_pi1|news
      source.intval = 1
      conf.tx_news_domain_model_news = COA
      conf.tx_news_domain_model_news {
        10 = TEXT
        10.field = title
        10.htmlSpecialChars = 1
      }
      wrap = <li class="current last" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">|</li>
    }
  }
[end]