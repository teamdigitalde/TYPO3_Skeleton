### Grid Elemente
# Überschrift einblenden
tt_content.gridelements_pi1.10=<lib.stdheader

tt_content.gridelements_pi1.20.10.setup {
	### 2spaltig Text 70/30
	1 < lib.gridelements.defaultGridSetup
	1 {
		cObject = FLUIDTEMPLATE
		cObject {
			file = fileadmin/templates/example.com/Html/70-30.html
		}
	}
	### 2spaltig Text 30/70
	2 < lib.gridelements.defaultGridSetup
	2 {
		cObject = FLUIDTEMPLATE
		cObject {
			file = fileadmin/templates/example.com/Html/30-70.html
		}
	}
	### 2spaltig Text 50/50
	3 < lib.gridelements.defaultGridSetup
	3 {
		cObject = FLUIDTEMPLATE
		cObject {
			file = fileadmin/templates/example.com/Html/50-50.html
		}
	}
	
	### 3spaltig Text 33/33/33
	4 < lib.gridelements.defaultGridSetup
	4 {
		cObject = FLUIDTEMPLATE
		cObject {
			file = fileadmin/templates/example.com/Html/33-33-33.html
		}
	}
	### 4spaltig Text 25/25/25/25
	5 < lib.gridelements.defaultGridSetup
	5 {
		cObject = FLUIDTEMPLATE
		cObject {
			file = fileadmin/templates/example.com/Html/25-25-25-25.html
		}
	}
}

# Tab Menue
# First define the tab cObject, we want this in the container
tt_content.gridelements_pi1.20.10.setup.uebb_bootstrap_tabs_tab {

	# Add the ID and the Class to the tab container
	preCObject = LOAD_REGISTER
	preCObject {
		containerId.cObject = COA
		containerId.cObject {
			wrap = id="|"
			10 = TEXT
			10.wrap = tab-content-|
			10.field = uid
		}

		containerClasses.cObject = COA
		containerClasses.cObject {
			wrap = class="tab-pane |"

			# fade or empty
			10 = TEXT
			10.field = parentgrid_flexform_switch_effect
			10.noTrimWrap = | | |

			# We want the active flag on the first child
			20 = TEXT
			20.value = active in
			20.noTrimWrap = | | |
			20.if {
				 value = 1
				 equals.data = cObj:parentRecordNumber
				 equals.prioriCalc = 1
			}
		}
	}

	outerWrap = <div {register: containerId} {register: containerClasses}>|</div>
	outerWrap.insertData = 1

	# Render the children the default way
	columns.0 {
		renderObj = < tt_content
	}
}

# Define the Tab Container
tt_content.gridelements_pi1.20.10.setup.uebb_bootstrap_tabs_container {
	# Render navigation using fluid
	cObject = FLUIDTEMPLATE
	cObject {
		file = fileadmin/templates/example.com/Html/tabs.html
	}

	# Add the renderObj of the tab directly, this prevents the "csc-default"-wrap
	columns.0 {
		renderObj = < tt_content.gridelements_pi1
	}
}



### Accordion ###

tt_content.gridelements_pi1.20.10.setup.uebb_bootstrap_collapsible_element {

# Build: <div class="panel-heading">|</div>
innerWrap.cObject = COA
innerWrap.cObject {
	wrap = <div class="panel-heading" role="tab"><h4 class="panel-title">|</h4></div>
	10 = TEXT
	10 {
		value.field = header
		typolink {
			parameter = #collapse-{field: uid}
			parameter.insertData = 1
			ATagParams = class="accordion-toggle" data-toggle="collapse" data-parent="#collapsible-{field: parentgrid_uid}"
			ATagParams.insertData = 1
			}
		}
	}

	# Build: <div class="panel panel-[default,primary,success,...]">|</div>
	outerWrap = <div id="c{field: uid}" class="panel {field: flexform_style}">|</div>
	outerWrap.insertData = 1

	# Build: <div id="collapse-[panel-uid]" class="panel-collapse collapse [in]">|</div>
	columns.0 {
		renderObj = < tt_content

		wrap.cObject = COA
		wrap.cObject {

			10 = COA
			10 {
				10 = TEXT
				10.wrap = <div id="collapse-|"
				10.field = uid

				20 = TEXT
				20.value = class="panel-collapse collapse
				20.noTrimWrap = | ||

				30 = TEXT
				30.value = in
				30.noTrimWrap = | ||
				30.if {
					value = 1
					equals.field = flexform_active
				}

				40 = TEXT
				40.value = ">
			}

			20 = TEXT
			20.value = <div class="panel-body">|</div></div>
		}

	}
}

tt_content.gridelements_pi1.20.10.setup.uebb_bootstrap_collapsible_container {
	# Wrap collapsible
	# Build: <div class="panel-group" id="collapsible-[container-uid]">|</div>
	outerWrap = <div class="panel-group" id="collapsible-{field: uid}">|</div>
	outerWrap.insertData = 1

	# Direct rendering of the collapsible elements, prevents "csc-default"-wrap
	columns.0 {
		renderObj < tt_content.gridelements_pi1
	}

}