"Filed out from Dolphin Smalltalk"!

WAPainterVisitor subclass: #WAInitialRequestVisitor
	instanceVariableNames: 'request'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAInitialRequestVisitor guid: (GUID fromString: '{41d0e5f5-58bc-4b3a-95f4-546e13d6f88d}')!

WAInitialRequestVisitor comment: ''!

!WAInitialRequestVisitor categoriesForClass!Visitors! !

!WAInitialRequestVisitor methodsFor!

initializeWithRequest: aRequest	self initialize.	request := aRequest!

request	^ request!

visitPresenter: aPresenter	aPresenter initialRequest: self request! !

!WAInitialRequestVisitor categoriesForMethods!
initializeWithRequest:!initialization!public! !
request!accessing!public! !
visitPresenter:!public!visiting! !
!

!WAInitialRequestVisitor class methodsFor!

new	^ self request: nil!

request: aRequest	^ self basicNew initializeWithRequest: aRequest; yourself! !

!WAInitialRequestVisitor class categoriesForMethods!
new!instance creation!public! !
request:!instance creation!public! !
!

