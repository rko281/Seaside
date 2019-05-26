"Filed out from Dolphin Smalltalk 7"!

WAValueCallback subclass: #WAUploadCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUploadCallback guid: (GUID fromString: '{798eb770-b813-4691-961a-090236b2e8c9}')!
WAUploadCallback comment: ''!
!WAUploadCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAUploadCallback methodsFor!

valueForField: anObject	^ (anObject isKindOf: WAFile) ifTrue: [ anObject ]! !
!WAUploadCallback categoriesFor: #valueForField:!converting!public! !

