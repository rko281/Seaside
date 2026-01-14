"Filed out from Dolphin Smalltalk"!

WAUploadCallback subclass: #WAAllUploadsCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAllUploadsCallback guid: (GUID fromString: '{6cb9e628-f544-457d-bd52-fae8166b7fb3}')!

WAAllUploadsCallback comment: ''!

!WAAllUploadsCallback categoriesForClass!Seaside-Core-Callbacks! !

!WAAllUploadsCallback methodsFor!

evaluateWithFieldValues: anOrderedCollection	self evaluateWithArgument: ((anOrderedCollection		collect: [ :each | self valueForField: each ])		reject: [ :each | each isNil ])! !

!WAAllUploadsCallback categoriesForMethods!
evaluateWithFieldValues:!evaluation!public! !
!

