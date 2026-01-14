"Filed out from Dolphin Smalltalk"!

JQAjaxAbstractInternalCallback subclass: #JQAjaxInternalCallbackRespondText
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAjaxInternalCallbackRespondText guid: (GUID fromString: '{2d9be3e1-35df-4bc0-86f8-2b5c6efddd2e}')!

JQAjaxInternalCallbackRespondText comment: ''!

!JQAjaxInternalCallbackRespondText categoriesForClass!JQuery-Core-Objects! !

!JQAjaxInternalCallbackRespondText methodsFor!

initializeWithBlock: initialBlock	self initialize.	block := initialBlock.!

process	self requestContext respond: [ :response |		response			doNotCache;			contentType: (WAMimeType textPlain 				charset: self requestContext handler charSet).		block value: response stream ]! !

!JQAjaxInternalCallbackRespondText categoriesForMethods!
initializeWithBlock:!initialization!public! !
process!processing!public! !
!

!JQAjaxInternalCallbackRespondText class methodsFor!

block: block	^ self basicNew initializeWithBlock: block! !

!JQAjaxInternalCallbackRespondText class categoriesForMethods!
block:!instance creation!public! !
!

