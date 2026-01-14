"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WADeprecationFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADeprecationFunctionalTest guid: (GUID fromString: '{b6fc8118-57f3-4dab-ac56-bad1b9f8690f}')!

WADeprecationFunctionalTest comment: ''!

!WADeprecationFunctionalTest categoriesForClass!Seaside-Tests-Functional! !

!WADeprecationFunctionalTest methodsFor!

deprecatedMethod	self		greaseDeprecatedApi: 'this method is deprecated'		details: 'use a different method instead'!

renderContentOn: html	html text: 'a deprecation warning should pop up in the toolbar'.	self deprecatedMethod! !

!WADeprecationFunctionalTest categoriesForMethods!
deprecatedMethod!private! !
renderContentOn:!public!rendering! !
!

