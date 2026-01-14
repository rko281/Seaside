"Filed out from Dolphin Smalltalk"!

WACallback subclass: #WAValueCallback
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAValueCallback guid: (GUID fromString: '{9e6d74dd-e3ee-41da-876b-369bc43336fd}')!

WAValueCallback comment: ''!

!WAValueCallback categoriesForClass!Seaside-Core-Callbacks! !

!WAValueCallback methodsFor!

block: aOneArgBlock	block := aOneArgBlock!

evaluateWithArgument: anObject	anObject isNil		ifFalse: [ block valueWithPossibleArguments: (Array with: anObject) ]!

valueForField: anObject	"For most ValueCallbacks, it is more convenient to work with an empty String	than with nil when the HTML input is empty."		^ anObject ifNil: [ String new ]! !

!WAValueCallback categoriesForMethods!
block:!accessing!public! !
evaluateWithArgument:!evaluation!public! !
valueForField:!converting!public! !
!

