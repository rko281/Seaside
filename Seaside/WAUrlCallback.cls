"Filed out from Dolphin Smalltalk 7"!

WAValueCallback subclass: #WAUrlCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUrlCallback guid: (GUID fromString: '{6e558f59-73c9-4ecb-8b7e-5800d332252f}')!
WAUrlCallback comment: 'A WAEmailCallback is a callback for url input fields.'!
!WAUrlCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAUrlCallback methodsFor!

valueForField: anObject	^ anObject isEmptyOrNil		ifTrue: [ nil ]		ifFalse: [ WAUrl absolute: anObject ]! !
!WAUrlCallback categoriesFor: #valueForField:!converting!public! !

