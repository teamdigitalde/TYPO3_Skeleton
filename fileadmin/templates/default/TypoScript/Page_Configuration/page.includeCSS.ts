page.includeCSS {
  5 =  {$filepaths.css}gumby.css
  10 = {$filepaths.css}styles.css
  15 = {$filepaths.css}powermail.css
  20 = {$filepaths.css}print.css
  20.media = print
}

# Condition to add extra CSS for Internet Explorer 6
[browser = msie] && [version =< 7]
page.includeCSS {
  9999 = {$filepaths.css}msie6.css
  9999 {
    media = screen
  }
}
[global]

/*
[globalVar = TSFE:id = 327]
page.includeCSS.newsletterAnmeldung = {$filepaths.css}newsletter_anmeldung.css
[global]
*/