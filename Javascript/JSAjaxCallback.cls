"Filed out from Dolphin Smalltalk"!

WACallback subclass: #JSAjaxCallback
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSAjaxCallback guid: (GUID fromString: '{ea9dfb69-0448-41eb-ad53-a978753e57f5}')!

JSAjaxCallback comment: ''!

!JSAjaxCallback categoriesForClass!Base! !

!JSAjaxCallback methodsFor!

block: aZeroOrOneArgBlock	block := aZeroOrOneArgBlock!

evaluateWithArgument: anObject	block isNil		ifFalse: [ block valueWithPossibleArguments: (Array with: anObject) ].	self requestContext		respond: [ :response | response doNotCache ]!

priority	^ 5! !

!JSAjaxCallback categoriesForMethods!
block:!accessing!public! !
evaluateWithArgument:!evaluation!public! !
priority!accessing!public! !
!

