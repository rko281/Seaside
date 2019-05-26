"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WARootFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARootFunctionalTest guid: (GUID fromString: '{219a31fb-2995-45ca-a3ae-cdde9ffe5c97}')!
WARootFunctionalTest comment: ''!
!WARootFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WARootFunctionalTest methodsFor!

renderContentOn: html	html text: 'body{font-size:12px;}'!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	anHtmlRoot style: 'body{font-size:12px;}'! !
!WARootFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !
!WARootFunctionalTest categoriesFor: #updateRoot:!public!update! !

