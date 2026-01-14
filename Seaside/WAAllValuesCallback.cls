"Filed out from Dolphin Smalltalk"!

WAValueCallback subclass: #WAAllValuesCallback
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAllValuesCallback guid: (GUID fromString: '{ca751c02-d47f-49be-902f-97283c724fe6}')!

WAAllValuesCallback comment: 'WAAllValuesCallback is a special WAValueCallback that whos value is a sequenceable collection of values.'!

!WAAllValuesCallback categoriesForClass!Seaside-Core-Callbacks! !

!WAAllValuesCallback methodsFor!

evaluateWithFieldValues: anOrderedCollection	self evaluateWithArgument: (anOrderedCollection collect: [ :each |		self valueForField: each ])! !

!WAAllValuesCallback categoriesForMethods!
evaluateWithFieldValues:!evaluation!public! !
!

