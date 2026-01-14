"Filed out from Dolphin Smalltalk"!

WAValueCallback subclass: #WAEmailCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAEmailCallback guid: (GUID fromString: '{cfa0a634-e472-4cdc-9309-ced7db05b02b}')!

WAEmailCallback comment: 'A WAEmailCallback is a callback for email input fields.'!

!WAEmailCallback categoriesForClass!Seaside-Core-Callbacks! !

!WAEmailCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAEmailAddress address: anObject ]! !

!WAEmailCallback categoriesForMethods!
valueForField:!converting!public! !
!

