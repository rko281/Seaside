"Filed out from Dolphin Smalltalk"!

WAValueCallback subclass: #WAAllValuesCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAllValuesCallback guid: (GUID fromString: '{cbd3d93c-0520-4b0a-ad9a-6b480fa2fdb7}')!

WAAllValuesCallback comment: 'WAAllValuesCallback is a special WAValueCallback that whos value is a sequenceable collection of values.'!

!WAAllValuesCallback categoriesForClass!Callbacks! !

!WAAllValuesCallback methodsFor!

evaluateWithFieldValues: anOrderedCollection	self evaluateWithArgument: (anOrderedCollection collect: [ :each |		self valueForField: each ])! !

!WAAllValuesCallback categoriesForMethods!
evaluateWithFieldValues:!evaluation!public! !
!

