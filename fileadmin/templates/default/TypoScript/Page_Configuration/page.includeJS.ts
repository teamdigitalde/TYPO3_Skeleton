page {
  includeJSlibs {
    modernizr = {$filepaths.scripts}libs/modernizr-2.6.2.min.js
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
    fancybox = {$filepaths.scripts}libs/jquery.fancybox.pack.js
    #plugins = {$filepaths.scripts}plugins.js
    main = {$filepaths.scripts}main.js
  }
}