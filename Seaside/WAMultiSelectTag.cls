"Filed out from Dolphin Smalltalk"!

WASelectTag subclass: #WAMultiSelectTag
	instanceVariableNames: 'callback'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMultiSelectTag guid: (GUID fromString: '{2876bb06-3aa4-45ea-bec9-02b4598e2f40}')!

WAMultiSelectTag comment: 'See superclass.'!

!WAMultiSelectTag categoriesForClass!Tags! !

!WAMultiSelectTag methodsFor!

callbackClass	^ WAMultipleValuesCallback!

closeTag	super closeTag.	self hasCallback ifFalse: [ ^ self ].	canvas hiddenInput		callback: [ self triggerCallback ].	canvas flush!

isSelected: anObject	^ selected notNil and: [ selected includes: anObject ]!

openTag	self attributes at: 'multiple' put: true.	super openTag!

storeCallback: aCallback	^ super storeCallback: (callback := aCallback)!

triggerCallback	"Ensure that the callback triggers even if the browser does not submit a value."	self requestContext request		at: callback key		ifAbsent: [ callback evaluateWithFieldValues: #() ]! !

!WAMultiSelectTag categoriesForMethods!
callbackClass!accessing!public! !
closeTag!private! !
isSelected:!public!testing! !
openTag!private! !
storeCallback:!private! !
triggerCallback!private! !
!

