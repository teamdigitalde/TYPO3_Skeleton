### Grid Elemente
# Überschrift einblenden
tt_content.gridelements_pi1.10=<lib.stdheader

tt_content.gridelements_pi1.20.10.setup {
	### 2spaltig Text 70/30
	1 < lib.gridelements.defaultGridSetup
	1 {
		cObject = FLUIDTEMPLATE
		cObject {
			file = fileadmin/templates/default/Html/Gridelements/70-30.html
		}
	}
	### 2spaltig Text 30/70
	2 < lib.gridelements.defaultGridSetup
	2 {
		cObject = FLUIDTEMPLATE
		cObject {
			file = fileadmin/templates/default/Html/Gridelements/30-70.html
		}
	}
	### 2spaltig Text 50/50
	3 < lib.gridelements.defaultGridSetup
	3 {
		cObject = FLUIDTEMPLATE
		cObject {
			file = fileadmin/templates/default/Html/Gridelements/50-50.html
		}
	}
	
	### 3spaltig Text 33/33/33
	4 < lib.gridelements.defaultGridSetup
	4 {
		cObject = FLUIDTEMPLATE
		cObject {
			file = fileadmin/templates/default/Html/Gridelements/33-33-33.html
		}
	}
	### 4spaltig Text 25/25/25/25
	5 < lib.gridelements.defaultGridSetup
	5 {
		cObject = FLUIDTEMPLATE
		cObject {
			file = fileadmin/templates/default/Html/Gridelements/25-25-25-25.html
		}
	}
}