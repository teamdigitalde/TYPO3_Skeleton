#plugin.tx_powermail.view.templateRootPath = fileadmin/templates/default/Html/Powermail/
#plugin.tx_powermail.view.partialRootPath = fileadmin/templates/default/Html/Powermail/
/*
plugin.tx_powermail {
	settings.setup.prefill.referrer = TEXT
	settings.setup.prefill.referrer {
		typolink.parameter.data = TSFE:id
		typolink.returnLast = URL
	}
}
*/
/*
plugin.tx_powermail {
  settings.setup.prefill.referrer = TEXT
  settings.setup.prefill.referrer.data = getenv:HTTP_REFERER
  settings.setup.optin.subject.data = LLL:fileadmin/templates/example.com/Resources/Private/Language/locallang.xlf:powermail.optin.subject
}
*/

plugin.tx_powermail {
	settings {
		setup {
			# Exclude values from {powermail_all} by markername or fieldtype
			excludeFromPowermailAllMarker {
				# On Confirmation Page (if activated)
				confirmationPage {
					# add some markernames (commaseparated) which should be excluded
					excludeFromMarkerNames = adminonly, referrer

					# add some fieldtypes (commaseparated) which should be excluded
					excludeFromFieldTypes = hidden, captcha
				}

				# On Submitpage
				submitPage {
					# add some markernames (commaseparated) which should be excluded
					excludeFromMarkerNames = adminonly, referrer

					# add some fieldtypes (commaseparated) which should be excluded
					excludeFromFieldTypes = hidden, captcha
				}

				# In Mail to receiver
				receiverMail {
					# add some markernames (commaseparated) which should be excluded
					excludeFromMarkerNames =

					# add some fieldtypes (commaseparated) which should be excluded
					excludeFromFieldTypes =
				}

				# In Mail to sender (if activated)
				senderMail {
					# add some markernames (commaseparated) which should be excluded
					excludeFromMarkerNames = adminonly, referrer

					# add some fieldtypes (commaseparated) which should be excluded
					excludeFromFieldTypes = hidden, captcha
				}

				# In double-opt-in Mail to sender (if activated)
				optinMail {
					# add some markernames (commaseparated) which should be excluded
					excludeFromMarkerNames = adminonly, referrer

					# add some fieldtypes (commaseparated) which should be excluded
					excludeFromFieldTypes = hidden, captcha
				}
			}
		}
	}
}