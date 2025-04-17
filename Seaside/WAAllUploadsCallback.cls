"Filed out from Dolphin Smalltalk"!

WAUploadCallback subclass: #WAAllUploadsCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAllUploadsCallback guid: (GUID fromString: '{662d851c-1d42-4845-a87a-b464c4a5d335}')!

WAAllUploadsCallback comment: ''!

!WAAllUploadsCallback categoriesForClass!Callbacks! !

!WAAllUploadsCallback methodsFor!

evaluateWithFieldValues: anOrderedCollection	self evaluateWithArgument: ((anOrderedCollection		collect: [ :each | self valueForField: each ])		reject: [ :each | each isNil ])! !

!WAAllUploadsCallback categoriesForMethods!
evaluateWithFieldValues:!evaluation!public! !
!

