"Filed out from Dolphin Smalltalk 7"!

WAFunctionalTest subclass: #WAHomeFunctionalTest
	instanceVariableNames: 'main'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAHomeFunctionalTest guid: (GUID fromString: '{7a7605b1-5f8b-453f-93a5-ea83180100a3}')!
WAHomeFunctionalTest comment: ''!
!WAHomeFunctionalTest categoriesForClass!Seaside-Tests-Functional! !
!WAHomeFunctionalTest methodsFor!

children	^ Array with: main!

initialize	super initialize.	main := self message: 'Root Component'!

message: aString	^ WAComponent new		addMessage: aString;		yourself!

renderContentOn: html	html paragraph: 'Clicking home should always bring back the root component.'.	html paragraph: [		html anchor			callback: [ main show: (self message: 'Called Component') ];			with: 'call'.		html space.		html anchor			callback: [ main home ];			with: 'home' ].	html render: main! !
!WAHomeFunctionalTest categoriesFor: #children!hooks!public! !
!WAHomeFunctionalTest categoriesFor: #initialize!initialization!public! !
!WAHomeFunctionalTest categoriesFor: #message:!accessing!public! !
!WAHomeFunctionalTest categoriesFor: #renderContentOn:!public!rendering! !

