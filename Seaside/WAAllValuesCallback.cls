"Filed out from Dolphin Smalltalk 7"!

WAValueCallback subclass: #WAAllValuesCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAllValuesCallback guid: (GUID fromString: '{32ddbf45-d652-46f8-b5d5-81c2ec13ff97}')!
WAAllValuesCallback comment: 'WAAllValuesCallback is a special WAValueCallback that whos value is a sequenceable collection of values.'!
!WAAllValuesCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAAllValuesCallback methodsFor!

evaluateWithFieldValues: anOrderedCollection	self evaluateWithArgument: (anOrderedCollection collect: [ :each |		self valueForField: each ])! !
!WAAllValuesCallback categoriesFor: #evaluateWithFieldValues:!evaluation!public! !

