"Filed out from Dolphin Smalltalk 7"!

WAValueCallback subclass: #WAUploadCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUploadCallback guid: (GUID fromString: '{75b7da35-2253-4e52-b84d-9322b17271f9}')!
WAUploadCallback comment: ''!
!WAUploadCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAUploadCallback methodsFor!

valueForField: anObject	^ (anObject isKindOf: WAFile) ifTrue: [ anObject ]! !
!WAUploadCallback categoriesFor: #valueForField:!converting!public! !

