lib.layoutSwitch = CASE
lib.layoutSwitch {
    key.data = levelfield:-1,backend_layout_next_level,slide
    key.override.field = backend_layout
    1 = TEXT
    1.value = layout1
}
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