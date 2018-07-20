"Filed out from Dolphin Smalltalk 7"!

WACallback subclass: #WADispatchCallback
	instanceVariableNames: 'callbacks'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADispatchCallback guid: (GUID fromString: '{017cde52-ebce-4933-b4d7-04c457512d2d}')!
WADispatchCallback comment: ''!
!WADispatchCallback categoriesForClass!Seaside-Core-Callbacks! !
!WADispatchCallback methodsFor!

evaluateWithArgument: anObject	callbacks at: anObject ifPresent: [ :callback | callback evaluateWithFieldValues: #(nil) ]!

setKey: aString callbacks: aDictionary	super setKey: aString callbacks: aDictionary.	callbacks := aDictionary! !
!WADispatchCallback categoriesFor: #evaluateWithArgument:!evaluation!public! !
!WADispatchCallback categoriesFor: #setKey:callbacks:!initialization!public! !

