page {
  includeJSLibs {
    modernizr = {$filepaths.scripts}libs/modernizr-3.2.0-custom.min.js
    #selectivizr = {filepaths.scripts}libs/selectivizr-min.js
    #selectivizr {
    #  allWrap = <!--[if (gte IE 6)&(lte IE 8)]>|<![endif]-->
    #  excludeFromConcatenation = 1
    #}
    jQuery = //ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js
    jQuery {
      external = 1
      excludeFromConcatenation = 1
      disableCompression = 1
    }
  }
  includeJSFooterlibs {

  }
  includeJSFooter {
    bootstrap = {$filepaths.scripts}libs/bootstrap.min.js
    # submenu doesn open on hover, open it instead with a click
    #bootstrapSubmenu = {$filepaths.scripts}libs/bootstrap-submenu.min.js
    fancybox = {$filepaths.scripts}libs/jquery.fancybox.pack.js
    main = {$filepaths.scripts}main.js
  }
}