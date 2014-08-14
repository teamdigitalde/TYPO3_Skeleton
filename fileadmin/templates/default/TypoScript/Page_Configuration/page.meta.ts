page.meta {
  # If the meta field description in the page properties is filled, then this will override the default.
  description.field = description
  author.field = author
  keywords.field = keywords
  robots = INDEX,FOLLOW
	google-site-verification.cObject = TEXT
	google-site-verification.cObject {
    value = {$meta.google-site-verification.value}
    if.isTrue = {$meta.google-site-verification.active}
	}
}

[applicationContext = Development]
page.meta.robots = NOINDEX,NOFOLLOW
[global]