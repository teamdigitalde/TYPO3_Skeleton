lib.stdheader {
  3.headerClass.cObject {
    514 = TEXT
    514 {
      value = fauxHeadline
      if {
        value = 200
        equals.field = header_layout
      }
      noTrimWrap = | | |
    }
  }
  // h6
  10.6 < .10.1
  10.6.dataWrap = <h6{register:headerClass}>|</h6>
  // not really nice, but necessary for seo
  10.200 < .10.1
  10.200.dataWrap = <div{register:headerClass}>|</div>
}

