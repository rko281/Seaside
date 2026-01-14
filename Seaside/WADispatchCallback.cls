"Filed out from Dolphin Smalltalk"!

WACallback subclass: #WADispatchCallback
	instanceVariableNames: 'callbacks'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADispatchCallback guid: (GUID fromString: '{6ad142cb-4f68-4f19-9efc-518f71ea5d01}')!

WADispatchCallback comment: ''!

!WADispatchCallback categoriesForClass!Seaside-Core-Callbacks! !

!WADispatchCallback methodsFor!

evaluateWithArgument: anObject	callbacks at: anObject ifPresent: [ :callback | callback evaluateWithFieldValues: #(nil) ]!

setKey: aString callbacks: aDictionary	super setKey: aString callbacks: aDictionary.	callbacks := aDictionary! !

!WADispatchCallback categoriesForMethods!
evaluateWithArgument:!evaluation!public! !
setKey:callbacks:!initialization!public! !
!

