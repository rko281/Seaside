"Filed out from Dolphin Smalltalk"!

WACallback subclass: #JQAjaxCallback
	instanceVariableNames: 'ajax'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAjaxCallback guid: (GUID fromString: '{5eccb02b-fe28-4e4d-8795-e35247650a14}')!

JQAjaxCallback comment: ''!

!JQAjaxCallback categoriesForClass!JQuery-Core! !

!JQAjaxCallback methodsFor!

evaluateWithArgument: anObject	ajax processCallback.	self requestContext		respond: [ :response | response doNotCache ]!

initializeWithAjax: initialAjax	self initialize.	ajax := initialAjax.!

priority	^ 5! !

!JQAjaxCallback categoriesForMethods!
evaluateWithArgument:!evaluation!public! !
initializeWithAjax:!initialization!public! !
priority!accessing!public! !
!

!JQAjaxCallback class methodsFor!

ajax: ajax	^ self basicNew initializeWithAjax: ajax! !

!JQAjaxCallback class categoriesForMethods!
ajax:!instance creation!public! !
!

