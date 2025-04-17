"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WARootFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARootFunctionalTest guid: (GUID fromString: '{9617b545-570d-438b-a730-55102171f82e}')!

WARootFunctionalTest comment: ''!

!WARootFunctionalTest categoriesForClass!Unclassified! !

!WARootFunctionalTest methodsFor!

renderContentOn: html	html text: 'body{font-size:12px;}'!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	anHtmlRoot style: 'body{font-size:12px;}'! !

!WARootFunctionalTest categoriesForMethods!
renderContentOn:!public!rendering! !
updateRoot:!public!update! !
!

