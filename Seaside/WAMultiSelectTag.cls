"Filed out from Dolphin Smalltalk"!

WASelectTag subclass: #WAMultiSelectTag
	instanceVariableNames: 'callback'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMultiSelectTag guid: (GUID fromString: '{71c4502b-8eb1-4df0-b24a-934afb37444d}')!

WAMultiSelectTag comment: 'See superclass.'!

!WAMultiSelectTag categoriesForClass!Seaside-Canvas-Tags! !

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

