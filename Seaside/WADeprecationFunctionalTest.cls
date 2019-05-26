"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WADeprecationFunctionalTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADeprecationFunctionalTest guid: (GUID fromString: '{0fe0baf7-ee61-4b91-bb94-b812c81065a4}')!
WADeprecationFunctionalTest comment: ''!
!WADeprecationFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WADeprecationFunctionalTest methodsFor!

deprecatedMethod	self		greaseDeprecatedApi: 'this method is deprecated'		details: 'use a different method instead'!

renderContentOn: html	html text: 'a deprecation warning should pop up in the toolbar'.	self deprecatedMethod! !
!WADeprecationFunctionalTest categoriesFor: #deprecatedMethod!private! !
!WADeprecationFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !

