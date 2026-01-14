"Filed out from Dolphin Smalltalk"!

WACallback subclass: #JSAjaxCallback
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSAjaxCallback guid: (GUID fromString: '{1f5cbba2-2c2d-49d2-ad6d-a3fc21d989dc}')!

JSAjaxCallback comment: ''!

!JSAjaxCallback categoriesForClass!Javascript-Core-Base! !

!JSAjaxCallback methodsFor!

block: aZeroOrOneArgBlock	block := aZeroOrOneArgBlock!

evaluateWithArgument: anObject	block isNil		ifFalse: [ block valueWithPossibleArguments: (Array with: anObject) ].	self requestContext		respond: [ :response | response doNotCache ]!

priority	^ 5! !

!JSAjaxCallback categoriesForMethods!
block:!accessing!public! !
evaluateWithArgument:!evaluation!public! !
priority!accessing!public! !
!

