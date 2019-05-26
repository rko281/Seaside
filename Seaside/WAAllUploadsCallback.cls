"Filed out from Dolphin Smalltalk 7"!

WAUploadCallback subclass: #WAAllUploadsCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAllUploadsCallback guid: (GUID fromString: '{32385036-cc93-4df0-89b8-35a7f648ba24}')!
WAAllUploadsCallback comment: ''!
!WAAllUploadsCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAAllUploadsCallback methodsFor!

evaluateWithFieldValues: anOrderedCollection	self evaluateWithArgument: ((anOrderedCollection		collect: [ :each | self valueForField: each ])		reject: [ :each | each isNil ])! !
!WAAllUploadsCallback categoriesFor: #evaluateWithFieldValues:!evaluation!public! !

