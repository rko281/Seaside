"Filed out from Dolphin Smalltalk 7"!

WASelectTag subclass: #WAMultiSelectTag
	instanceVariableNames: 'callback'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMultiSelectTag guid: (GUID fromString: '{450a2b36-cd5f-4414-b0ff-f250f7069e89}')!
WAMultiSelectTag comment: 'See superclass.'!
!WAMultiSelectTag categoriesForClass!Seaside-Canvas-Tags! !
!WAMultiSelectTag methodsFor!

callbackClass	^ WAMultipleValuesCallback!

closeTag	super closeTag.	self hasCallback ifFalse: [ ^ self ].	canvas hiddenInput		callback: [ self triggerCallback ].	canvas flush!

isSelected: anObject	^ selected notNil and: [ selected includes: anObject ]!

openTag	self attributes at: 'multiple' put: true.	super openTag!

storeCallback: aCallback	^ super storeCallback: (callback := aCallback)!

triggerCallback	"Ensure that the callback triggers even if the browser does not submit a value."	self requestContext request		at: callback key		ifAbsent: [ callback evaluateWithFieldValues: #() ]! !
!WAMultiSelectTag categoriesFor: #callbackClass!accessing!public! !
!WAMultiSelectTag categoriesFor: #closeTag!private! !
!WAMultiSelectTag categoriesFor: #isSelected:!public!testing! !
!WAMultiSelectTag categoriesFor: #openTag!private! !
!WAMultiSelectTag categoriesFor: #storeCallback:!private! !
!WAMultiSelectTag categoriesFor: #triggerCallback!private! !

