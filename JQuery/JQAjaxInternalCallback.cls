"Filed out from Dolphin Smalltalk"!

JQAjaxAbstractInternalCallback subclass: #JQAjaxInternalCallback
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JQAjaxInternalCallback guid: (GUID fromString: '{204efbbd-ac66-46ed-9df0-b8250429c237}')!

JQAjaxInternalCallback comment: ''!

!JQAjaxInternalCallback categoriesForClass!JQuery-Core-Objects! !

!JQAjaxInternalCallback methodsFor!

initializeWithBlock: initialBlock	self initialize.	block := initialBlock.!

process	block value! !

!JQAjaxInternalCallback categoriesForMethods!
initializeWithBlock:!initialization!public! !
process!processing!public! !
!

!JQAjaxInternalCallback class methodsFor!

block: block	^ self basicNew initializeWithBlock: block! !

!JQAjaxInternalCallback class categoriesForMethods!
block:!instance creation!public! !
!

