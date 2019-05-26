"Filed out from Dolphin Smalltalk 7"!

WAValueCallback subclass: #WAAllValuesCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAllValuesCallback guid: (GUID fromString: '{3caeb4f8-a702-4865-a8d1-e5aabd9c41fe}')!
WAAllValuesCallback comment: 'WAAllValuesCallback is a special WAValueCallback that whos value is a sequenceable collection of values.'!
!WAAllValuesCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAAllValuesCallback methodsFor!

evaluateWithFieldValues: anOrderedCollection	self evaluateWithArgument: (anOrderedCollection collect: [ :each |		self valueForField: each ])! !
!WAAllValuesCallback categoriesFor: #evaluateWithFieldValues:!evaluation!public! !

