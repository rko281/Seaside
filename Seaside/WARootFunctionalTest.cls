"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WARootFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARootFunctionalTest guid: (GUID fromString: '{8508c074-a1b8-41d3-81bf-b637f90f19fb}')!

WARootFunctionalTest comment: ''!

!WARootFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WARootFunctionalTest methodsFor!

renderContentOn: html	html text: 'body{font-size:12px;}'!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	anHtmlRoot style: 'body{font-size:12px;}'! !

!WARootFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
updateRoot:!public!update! !
!

