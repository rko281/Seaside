"Filed out from Dolphin Smalltalk 7"!

WACallback subclass: #WADispatchCallback
	instanceVariableNames: 'callbacks'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADispatchCallback guid: (GUID fromString: '{c2154c3c-4867-4bba-b37c-f02061e4eb19}')!
WADispatchCallback comment: ''!
!WADispatchCallback categoriesForClass!Seaside-Core-Callbacks! !
!WADispatchCallback methodsFor!

evaluateWithArgument: anObject	callbacks at: anObject ifPresent: [ :callback | callback evaluateWithFieldValues: #(nil) ]!

setKey: aString callbacks: aDictionary	super setKey: aString callbacks: aDictionary.	callbacks := aDictionary! !
!WADispatchCallback categoriesFor: #evaluateWithArgument:!evaluation!public! !
!WADispatchCallback categoriesFor: #setKey:callbacks:!initialization!public! !

