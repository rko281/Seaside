"Filed out from Dolphin Smalltalk"!

JQAjaxAbstractInternalCallback subclass: #JQAjaxInternalCallbackRespondJSON
	instanceVariableNames: 'renderable'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAjaxInternalCallbackRespondJSON guid: (GUID fromString: '{cb32c257-7054-41ef-b035-654889e59f3a}')!

JQAjaxInternalCallbackRespondJSON comment: ''!

!JQAjaxInternalCallbackRespondJSON categoriesForClass!JQuery-JSON! !

!JQAjaxInternalCallbackRespondJSON methodsFor!

initializeWithRenderable: initialRenderable	self initialize.	renderable := initialRenderable.!

process	self requestContext respond: [ :response |		response			doNotCache;			contentType: WAMimeType applicationJson;			nextPutAll: (WAJsonCanvas builder render: renderable) ]! !

!JQAjaxInternalCallbackRespondJSON categoriesForMethods!
initializeWithRenderable:!initialization!public! !
process!processing!public! !
!

!JQAjaxInternalCallbackRespondJSON class methodsFor!

renderable: renderable	^ self basicNew initializeWithRenderable: renderable! !

!JQAjaxInternalCallbackRespondJSON class categoriesForMethods!
renderable:!instance creation!public! !
!

