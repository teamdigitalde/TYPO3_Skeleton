config {
  # cat=config; type=boolean; label=Admin Panel: Turn on admin panel (mainly for testing purposes only)
  adminPanel = 0

  # cat=config; type=boolean; label=Debugging: Turn on debugging (testing purposes only)
  debug = 0
  
  # cat=config; type=string; label=Domain name for Base URL: (excluding slashes and protocol like http://)
  domain = example.com
}

filepaths {
  # cat=filepaths; type=string; label=HTML Templates: Location of the (X)HTML templates relative to site
  templates = fileadmin/templates/example.com/Html/
  
  # cat=filepaths; type=string; label=CSS: Location of the Cascading Style Sheets relative to site
  css = fileadmin/templates/example.com/Css/
  
  # cat=filepaths; type=string; label=Images: Location of the images relative to site
  images = fileadmin/templates/example.com/Resources/Images/

  # cat=filepaths; type=string; label=Scripts: Location of the Javascript files relative to site
  scripts = fileadmin/templates/example.com/Js/
}

menu {
  # cat=navigation menus; type=string; label= Top-menu pages: Comma separated list of page id's to be included in top-right menu.
  top.pages = 6
  # cat=navigation menus; type=string; label= Footer-menu pages: Comma separated list of page id's to be included in footer menu.
  footer.pages = 6
}

# Pfad zu den Fluid Templates
styles.templates {
  # cat=content/templates/b1; type=string; label= Path of Fluid Templates for all defined content elements
  templateRootPath = fileadmin/templates/example.com/Html/Templates/
  # cat=content/templates/b2; type=string; label= Path of Fluid Partials for all defined content elements
  partialRootPath = fileadmin/templates/example.com/Html/Partials/
  # cat=content/templates/b3; type=string; label= Path of Fluid Layouts for all defined content elements
  layoutRootPath = fileadmin/templates/example.com/Html/Layouts/
}

styles.content {
  # Überschrift H1
  defaultHeaderType = 1	
  
  # This defines the maximum width of images inserted in content records of type Images or Text-with-images.
  # There are seperate settings for images floated next to text (..InText)
  textmedia {
    maxW = 960
    maxWInText = 960
    borderWidth = 1
    borderColor = #ccc
    linkWrap.newWindow = 1
	linkWrap.width =
	linkWrap.height =
  }
  uploads {
    jumpurl_secure = 1
    jumpurl_secure_mimeTypes = pdf=application/pdf, doc=application/msword
    jumpurl = 1
  }
}

contentpage {
  # cat=contentpage; type=int+; label= Footer source PID: Parent ID of the footer record used on content pages.
  footerPID = 20
  
  # cat=contentpage; type=int+; label= ID of the home page: ID of the home (root) page of the site.
  homeID = 1

  # cat=contentpage; type=int+; label= loginboxPID: ID of the folder containing the login box record (to be shown on multiple pages)
  loginboxPID = 21

  # cat=contentpage; type=int+; label= loginboxUID: UID of the login box record (to be shown on multiple pages)
  loginboxUID = 31

  # cat=contentpage; type=int+; label= loginpageID: UID of the customer login page.
  loginpageID = 28
  
  # cat=contentpage; type=string; label= language1: name of the default language of this site
  language1 = deutsch

  # cat=contentpage; type=string; label= language2: name of the second language of this site
  language2 = english
}

# Set the language of meta tag with DC.language to Danish, when in Danish
[globalVar = GP:L = 1]
plugin.meta.language = en
[global]


# Lightbox
styles.content.textmedia.linkWrap {
    lightboxEnabled = 1
    lightboxRelAttribute = lightbox{field:uid}
    lightboxCssClass = fancybox
}

# some domainspecific values
meta {
	google-site-verification {
  	active = 0
  	value = 
	}
	geo {
		active = 0
		region = DE-HE
		placename = Lauterbach
		position = 50.63;9.39
	}
}
headerData {
  hreflang.active = 0
  googleAnalytics {
    active = 0
    id = UA-123456789-1
  }
  piwik {
    active = 0
    site_id = 1
    # be aware of leading and trailing slashes!
    tracker_url = //piwik.example.com/
  }
}

lib.currentUrl= COA
lib.currentUrl {
  10 = TEXT
  10.typolink {
    parameter.data = TSFE:id
    returnLast = url
    forceAbsoluteUrl = 1
    useCacheHash = 1
    additionalParams.cObject = COA
    additionalParams.cObject {
      #EXT:news
      100 = TEXT
      100.dataWrap = &tx_news_pi1[news]={GP:tx_news_pi1|news}
      100.if.isTrue.data = GP:tx_news_pi1|news
      110 = TEXT
      110.dataWrap = &tx_news_pi1[controller]={GP:tx_news_pi1|controller}
      110.if.isTrue.data = GP:tx_news_pi1|controller
      120 = TEXT
      120.dataWrap = &tx_news_pi1[action]={GP:tx_news_pi1|action}
      120.if.isTrue.data = GP:tx_news_pi1|action
      #EXT:cal
      /*
      200 = TEXT
      200.dataWrap = &tx_cal_controller[view]={GP:tx_cal_controller|view}
      200.if.isTrue.data = GP:tx_cal_controller|view
      210 = TEXT
      210.dataWrap = &tx_cal_controller[type]={GP:tx_cal_controller|type}
      210.if.isTrue.data = GP:tx_cal_controller|type
      220 = TEXT
      220.dataWrap = &tx_cal_controller[uid]={GP:tx_cal_controller|uid}
      220.if.isTrue.data = GP:tx_cal_controller|uid
      230 = TEXT
      230.dataWrap = &tx_cal_controller[year]={GP:tx_cal_controller|year}
      230.if.isTrue.data = GP:tx_cal_controller|year
      240 = TEXT
      240.dataWrap = &tx_cal_controller[month]={GP:tx_cal_controller|month}
      240.if.isTrue.data = GP:tx_cal_controller|month
      250 = TEXT
      250.dataWrap = &tx_cal_controller[day]={GP:tx_cal_controller|day}
      250.if.isTrue.data = GP:tx_cal_controller|day
      260 = TEXT
      260.dataWrap = &tx_cal_controller[getdate]={GP:tx_cal_controller|getdate}
      260.if.isTrue.data = GP:tx_cal_controller|getdate
      270 = TEXT
      270.dataWrap = &tx_cal_controller[categorySelection]={GP:tx_cal_controller|categorySelection}
      270.if.isTrue.data = GP:tx_cal_controller|categorySelection
      280 = TEXT
      280.dataWrap = &tx_cal_controller[category][0]={GP:tx_cal_controller|category|0}
      280.if.isTrue.data = GP:tx_cal_controller|category|9
      */
    }
  }
}