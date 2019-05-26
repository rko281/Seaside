"Filed out from Dolphin Smalltalk 7"!

WAValueCallback subclass: #WAEmailCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAEmailCallback guid: (GUID fromString: '{2e3c2b41-6869-4bbc-b205-fa35b7986afb}')!
WAEmailCallback comment: 'A WAEmailCallback is a callback for email input fields.'!
!WAEmailCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAEmailCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAEmailAddress address: anObject ]! !
!WAEmailCallback categoriesFor: #valueForField:!converting!public! !

