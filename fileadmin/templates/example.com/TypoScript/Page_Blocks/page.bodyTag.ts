lib.backend_layout = TEXT
lib.backend_layout {
	data = levelfield:-1, backend_layout_next_level, slide
	override.field = backend_layout
}
lib.layoutSwitch < lib.backend_layout
lib.layoutSwitch.wrap = layout|

# BODY-Tag erstellen ###############################
lib.bodyTag = COA
lib.bodyTag {
	10 = TEXT
	10.dataWrap = <body id="p{TSFE:id}" class="
	# === insert layout switch (page|backend_layout)
	20 < lib.layoutSwitch
	90 = TEXT
	90.value = ">
} 