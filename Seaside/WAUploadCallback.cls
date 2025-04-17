"Filed out from Dolphin Smalltalk"!

WAValueCallback subclass: #WAUploadCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUploadCallback guid: (GUID fromString: '{292b4cf6-e375-40a6-9cb3-1b0684a3d00a}')!

WAUploadCallback comment: ''!

!WAUploadCallback categoriesForClass!Callbacks! !

!WAUploadCallback methodsFor!

valueForField: anObject	^ (anObject isKindOf: WAAbstractFile) ifTrue: [ anObject ]! !

!WAUploadCallback categoriesForMethods!
valueForField:!converting!public! !
!

