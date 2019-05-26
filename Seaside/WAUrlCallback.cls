"Filed out from Dolphin Smalltalk 7"!

WAValueCallback subclass: #WAUrlCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUrlCallback guid: (GUID fromString: '{35e2e53d-b677-46b9-aeb5-93e112269f9f}')!
WAUrlCallback comment: 'A WAEmailCallback is a callback for url input fields.'!
!WAUrlCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAUrlCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAUrl absolute: anObject ]! !
!WAUrlCallback categoriesFor: #valueForField:!converting!public! !

