"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WADeprecationFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADeprecationFunctionalTest guid: (GUID fromString: '{5acf74c7-97f5-4e10-885b-314dd4bbe77a}')!

WADeprecationFunctionalTest comment: ''!

!WADeprecationFunctionalTest categoriesForClass!Unclassified! !

!WADeprecationFunctionalTest methodsFor!

deprecatedMethod	self		greaseDeprecatedApi: 'this method is deprecated'		details: 'use a different method instead'!

renderContentOn: html	html text: 'a deprecation warning should pop up in the toolbar'.	self deprecatedMethod! !

!WADeprecationFunctionalTest categoriesForMethods!
deprecatedMethod!private! !
renderContentOn:!public!rendering! !
!

