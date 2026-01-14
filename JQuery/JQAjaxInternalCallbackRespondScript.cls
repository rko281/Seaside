"Filed out from Dolphin Smalltalk"!

JQAjaxAbstractInternalCallback subclass: #JQAjaxInternalCallbackRespondScript
	instanceVariableNames: 'ajax block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAjaxInternalCallbackRespondScript guid: (GUID fromString: '{00c1c3a2-8a5e-490d-933c-2f8172fd1055}')!

JQAjaxInternalCallbackRespondScript comment: ''!

!JQAjaxInternalCallbackRespondScript categoriesForClass!JQuery-Core-Objects! !

!JQAjaxInternalCallbackRespondScript methodsFor!

initializeWithAjax: initialAjax block: initialBlock	self initialize.	ajax := initialAjax.	block := initialBlock.!

process	self requestContext respond: [ :response |		response			doNotCache; 			contentType: (WAMimeType textJavascript				charset: self requestContext handler charSet).		ajax script: block on: response stream ]! !

!JQAjaxInternalCallbackRespondScript categoriesForMethods!
initializeWithAjax:block:!initialization!public! !
process!processing!public! !
!

!JQAjaxInternalCallbackRespondScript class methodsFor!

ajax: ajax block: block	^ self basicNew initializeWithAjax: ajax block: block! !

!JQAjaxInternalCallbackRespondScript class categoriesForMethods!
ajax:block:!instance creation!public! !
!

