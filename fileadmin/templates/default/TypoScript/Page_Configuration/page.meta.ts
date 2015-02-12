page.meta {
  # If the meta field description in the page properties is filled, then this will override the default.
  description.field = description
  author.field = author
  keywords.field = keywords
  viewport = width=device-width, initial-scale=1.0
  robots = INDEX,FOLLOW,NOODP
	google-site-verification.cObject = TEXT
	google-site-verification.cObject {
    value = {$meta.google-site-verification.value}
    if.isTrue = {$meta.google-site-verification.active}
  }
}

[applicationContext = Development]
page.meta.robots = NOINDEX,NOFOLLOW
[global]