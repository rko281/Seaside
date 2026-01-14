"Filed out from Dolphin Smalltalk"!

WAValueCallback subclass: #WAUrlCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUrlCallback guid: (GUID fromString: '{181d1683-b9cd-42a8-a285-680fa15d4dc1}')!

WAUrlCallback comment: 'A WAEmailCallback is a callback for url input fields.'!

!WAUrlCallback categoriesForClass!Seaside-Core-Callbacks! !

!WAUrlCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAUrl absolute: anObject ]! !

!WAUrlCallback categoriesForMethods!
valueForField:!converting!public! !
!

