page {
  includeJSlibs {
    modernizr = fileadmin/templates/js/libs/modernizr-2.6.2.min.js
    selectivizr = fileadmin/templates/js/libs/selectivizr-min.js
    selectivizr {
      allWrap = <!--[if (gte IE 6)&(lte IE 8)]>|<![endif]-->
      excludeFromConcatenation = 1
    }
    jQuery = //ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js
    jQuery {
      external = 1
      excludeFromConcatenation = 1
      disableCompression = 1
    }
  }
  includeJSFooterlibs {
    gumby = fileadmin/templates/js/libs/gumby.min.js
    gumby.excludeFromConcatenation = 1
    powermailValidationEngine = EXT:powermail/Resources/Public/Js/jquery.validationEngine.js
    powermailValidationEngineEn = EXT:powermail/Resources/Public/Js/jquery.validationEngine-en.js
  }
  includeJSFooter {
    plugins = fileadmin/templates/js/plugins.js
    main = {$filepaths.scripts}main.js
  }
}