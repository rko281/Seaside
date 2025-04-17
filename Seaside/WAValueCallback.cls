"Filed out from Dolphin Smalltalk"!

WACallback subclass: #WAValueCallback
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAValueCallback guid: (GUID fromString: '{c55fcd6c-7fd2-4cd6-b526-910a5f9d4b59}')!

WAValueCallback comment: ''!

!WAValueCallback categoriesForClass!Callbacks! !

!WAValueCallback methodsFor!

block: aOneArgBlock	block := aOneArgBlock!

evaluateWithArgument: anObject	anObject isNil		ifFalse: [ block valueWithPossibleArguments: (Array with: anObject) ]!

valueForField: anObject	"For most ValueCallbacks, it is more convenient to work with an empty String	than with nil when the HTML input is empty."		^ anObject ifNil: [ String new ]! !

!WAValueCallback categoriesForMethods!
block:!accessing!public! !
evaluateWithArgument:!evaluation!public! !
valueForField:!converting!public! !
!

