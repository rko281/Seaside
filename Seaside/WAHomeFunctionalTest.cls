"Filed out from Dolphin Smalltalk"!

WAFunctionalTest subclass: #WAHomeFunctionalTest
	instanceVariableNames: 'main'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAHomeFunctionalTest guid: (GUID fromString: '{970668c1-4256-4b45-9305-e20044c8fa82}')!

WAHomeFunctionalTest comment: ''!

!WAHomeFunctionalTest categoriesForClass!Unclassified! !

!WAHomeFunctionalTest methodsFor!

children	^ Array with: main!

initialize	super initialize.	main := self message: 'Root Component'!

message: aString	^ WAComponent new		addMessage: aString;		yourself!

renderContentOn: html	html paragraph: 'Clicking home should always bring back the root component.'.	html paragraph: [		html anchor			callback: [ main show: (self message: 'Called Component') ];			with: 'call'.		html space.		html anchor			callback: [ main home ];			with: 'home' ].	html render: main! !

!WAHomeFunctionalTest categoriesForMethods!
children!hooks!public! !
initialize!initialization!public! !
message:!accessing!public! !
renderContentOn:!public!rendering! !
!

