TYPO3_Skeleton
==============

Base skeleton for new TYPO3 projects featuring a directory structure and some base TypoScript files relevant for most of our projects

To pull the current repository contents to the destination on webserver simply execute the following via ssh:
`git pull git@github.com:teamdigitalde/TYPO3_Skeleton.git`

Add the following uncommented line, to the website's root page Resources > TypoScript Configuration to include this file
`<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/default/TsConfig/page.ts">`

Add the following uncommented line, to the root sys_template Constants to include this file
`<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/default/TypoScript/Constants.ts">`

Add the following uncommented line, to the root sys_template Setup to include this file
`<INCLUDE_TYPOSCRIPT: source="FILE:fileadmin/templates/default/TypoScript/ROOT.ts">`

After fetching the default files, the only thing to to is adding a new root template to the root page, adding static extension templates and overwriting some constants. Done :-)