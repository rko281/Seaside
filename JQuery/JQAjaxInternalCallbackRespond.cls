"Filed out from Dolphin Smalltalk"!

JQAjaxAbstractInternalCallback subclass: #JQAjaxInternalCallbackRespond
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAjaxInternalCallbackRespond guid: (GUID fromString: '{8d501499-1d8d-4795-8174-53f77f2d79a5}')!

JQAjaxInternalCallbackRespond comment: ''!

!JQAjaxInternalCallbackRespond categoriesForClass!JQuery-Core-Objects! !

!JQAjaxInternalCallbackRespond methodsFor!

initializeWithBlock: initialBlock	self initialize.	block := initialBlock.!

process	self requestContext respond: block! !

!JQAjaxInternalCallbackRespond categoriesForMethods!
initializeWithBlock:!initialization!public! !
process!processing!public! !
!

!JQAjaxInternalCallbackRespond class methodsFor!

block: block	^ self basicNew initializeWithBlock: block! !

!JQAjaxInternalCallbackRespond class categoriesForMethods!
block:!instance creation!public! !
!

