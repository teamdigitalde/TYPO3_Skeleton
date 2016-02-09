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

styles.templates {
  # cat=content/templates/b1; type=string; label= Path of Fluid Templates for all defined content elements
  templateRootPath = fileadmin/templates/example.com/Html/FluidTemplates/Templates/
  # cat=content/templates/b2; type=string; label= Path of Fluid Partials for all defined content elements
  partialRootPath = fileadmin/templates/example.com/Html/FluidTemplates/Partials/
  # cat=content/templates/b3; type=string; label= Path of Fluid Layouts for all defined content elements
  layoutRootPath = fileadmin/templates/example.com/Html/FluidTemplates/Layouts/
}

styles.content {
  # This defines the maximum width of images inserted in content records of type Images or Text-with-images.
  # There are seperate settings for images floated next to text (..InText)
  textmedia {
    maxW = 960
    maxWInText = 960
    borderThick = 1
    linkWrap.newWindow = 1
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

tt_content.image.20.1.imageLinkWrap.height =
tt_content.image.20.1.imageLinkWrap.width =

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
headerData.hreflang.active = 0
