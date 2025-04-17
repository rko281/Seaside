"Filed out from Dolphin Smalltalk"!

WAValueCallback subclass: #WAUrlCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUrlCallback guid: (GUID fromString: '{2447e783-67a7-42b6-92a3-bc6ceeef2ebb}')!

WAUrlCallback comment: 'A WAEmailCallback is a callback for url input fields.'!

!WAUrlCallback categoriesForClass!Callbacks! !

!WAUrlCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAUrl absolute: anObject ]! !

!WAUrlCallback categoriesForMethods!
valueForField:!converting!public! !
!

