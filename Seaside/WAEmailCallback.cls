"Filed out from Dolphin Smalltalk 7"!

WAValueCallback subclass: #WAEmailCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAEmailCallback guid: (GUID fromString: '{492b7822-a126-4cb5-9017-95743a86bfc8}')!
WAEmailCallback comment: 'A WAEmailCallback is a callback for email input fields.'!
!WAEmailCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAEmailCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAEmailAddress address: anObject ]! !
!WAEmailCallback categoriesFor: #valueForField:!converting!public! !

