"Filed out from Dolphin Smalltalk"!

WAValueCallback subclass: #WAUploadCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUploadCallback guid: (GUID fromString: '{304ed110-6352-4366-90d5-d3ea39440b22}')!

WAUploadCallback comment: ''!

!WAUploadCallback categoriesForClass!Seaside-Core-Callbacks! !

!WAUploadCallback methodsFor!

valueForField: anObject	^ (anObject isKindOf: WAAbstractFile) ifTrue: [ anObject ]! !

!WAUploadCallback categoriesForMethods!
valueForField:!converting!public! !
!

