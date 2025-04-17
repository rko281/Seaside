"Filed out from Dolphin Smalltalk"!

WACallback subclass: #WADispatchCallback
	instanceVariableNames: 'callbacks'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADispatchCallback guid: (GUID fromString: '{84732d03-3def-4859-99d7-ded95f0f2b27}')!

WADispatchCallback comment: ''!

!WADispatchCallback categoriesForClass!Callbacks! !

!WADispatchCallback methodsFor!

evaluateWithArgument: anObject	callbacks at: anObject ifPresent: [ :callback | callback evaluateWithFieldValues: #(nil) ]!

setKey: aString callbacks: aDictionary	super setKey: aString callbacks: aDictionary.	callbacks := aDictionary! !

!WADispatchCallback categoriesForMethods!
evaluateWithArgument:!evaluation!public! !
setKey:callbacks:!initialization!public! !
!

