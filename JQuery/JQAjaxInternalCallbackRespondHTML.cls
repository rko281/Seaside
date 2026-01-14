"Filed out from Dolphin Smalltalk"!

JQAjaxAbstractInternalCallback subclass: #JQAjaxInternalCallbackRespondHTML
	instanceVariableNames: 'ajax renderable'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAjaxInternalCallbackRespondHTML guid: (GUID fromString: '{f45d9977-5ee2-4861-8124-146d220826c1}')!

JQAjaxInternalCallbackRespondHTML comment: ''!

!JQAjaxInternalCallbackRespondHTML categoriesForClass!JQuery-Core-Objects! !

!JQAjaxInternalCallbackRespondHTML methodsFor!

initializeWithAjax: initialAjax renderable: initialRenderable	self initialize.	ajax := initialAjax.	renderable := initialRenderable.!

process	self requestContext respond: [ :response |		response			doNotCache;			contentType: self application contentType.		ajax render: renderable on: response stream ]! !

!JQAjaxInternalCallbackRespondHTML categoriesForMethods!
initializeWithAjax:renderable:!initialization!public! !
process!processing!public! !
!

!JQAjaxInternalCallbackRespondHTML class methodsFor!

ajax: ajax renderable: renderable	^ self basicNew initializeWithAjax: ajax renderable: renderable! !

!JQAjaxInternalCallbackRespondHTML class categoriesForMethods!
ajax:renderable:!instance creation!public! !
!

