"Filed out from Dolphin Smalltalk"!

WAValueCallback subclass: #WAEmailCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEmailCallback guid: (GUID fromString: '{203c8175-bbc3-4066-bb47-d9c6e0d9c0f9}')!

WAEmailCallback comment: 'A WAEmailCallback is a callback for email input fields.'!

!WAEmailCallback categoriesForClass!Callbacks! !

!WAEmailCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAEmailAddress address: anObject ]! !

!WAEmailCallback categoriesForMethods!
valueForField:!converting!public! !
!

