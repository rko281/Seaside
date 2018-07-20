"Filed out from Dolphin Smalltalk 7"!

WACallback subclass: #JSAjaxCallback
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSAjaxCallback guid: (GUID fromString: '{e4a9020c-493e-4a65-8fee-77ede326888b}')!
JSAjaxCallback comment: ''!
!JSAjaxCallback categoriesForClass!Javascript-Core! !
!JSAjaxCallback methodsFor!

block: aZeroOrOneArgBlock	block := aZeroOrOneArgBlock isNil		ifFalse: [ aZeroOrOneArgBlock fixCallbackTemps ]!

evaluateWithArgument: anObject	block isNil		ifFalse: [ block valueWithPossibleArguments: (Array with: anObject) ].	self requestContext		respond: [ :response | response doNotCache ]!

priority	^ 5! !
!JSAjaxCallback categoriesFor: #block:!accessing!public! !
!JSAjaxCallback categoriesFor: #evaluateWithArgument:!evaluation!public! !
!JSAjaxCallback categoriesFor: #priority!accessing!public! !

