"Filed out from Dolphin Smalltalk 7"!

WACallback subclass: #WAValueCallback
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAValueCallback guid: (GUID fromString: '{ccce2cfb-07ce-4474-bae9-f231d9d6dc27}')!
WAValueCallback comment: ''!
!WAValueCallback categoriesForClass!Seaside-Core-Callbacks! !
!WAValueCallback methodsFor!

block: aOneArgBlock	block := aOneArgBlock!

evaluateWithArgument: anObject	anObject isNil		ifFalse: [ block valueWithPossibleArguments: (Array with: anObject) ]!

valueForField: anObject	"For most ValueCallbacks, it is more convenient to work with an empty String	than with nil when the HTML input is empty."		^ anObject ifNil: [ String new ]! !
!WAValueCallback categoriesFor: #block:!accessing!public! !
!WAValueCallback categoriesFor: #evaluateWithArgument:!evaluation!public! !
!WAValueCallback categoriesFor: #valueForField:!converting!public! !

