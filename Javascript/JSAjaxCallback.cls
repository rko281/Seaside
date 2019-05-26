"Filed out from Dolphin Smalltalk 7"!

WACallback subclass: #JSAjaxCallback
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSAjaxCallback guid: (GUID fromString: '{01e01d47-3bec-48d1-ba50-9e61798364f8}')!
JSAjaxCallback comment: ''!
!JSAjaxCallback categoriesForClass!Javascript-Core-Base! !
!JSAjaxCallback methodsFor!

block: aZeroOrOneArgBlock	block := aZeroOrOneArgBlock isNil		ifFalse: [ aZeroOrOneArgBlock fixCallbackTemps ]!

evaluateWithArgument: anObject	block isNil		ifFalse: [ block valueWithPossibleArguments: (Array with: anObject) ].	self requestContext		respond: [ :response | response doNotCache ]!

priority	^ 5! !
!JSAjaxCallback categoriesFor: #block:!accessing!public! !
!JSAjaxCallback categoriesFor: #evaluateWithArgument:!evaluation!public! !
!JSAjaxCallback categoriesFor: #priority!accessing!public! !

