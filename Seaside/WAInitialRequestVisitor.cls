"Filed out from Dolphin Smalltalk"!

WAPainterVisitor subclass: #WAInitialRequestVisitor
	instanceVariableNames: 'request'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAInitialRequestVisitor guid: (GUID fromString: '{497c3e0e-c062-4b0f-b800-1c833cf7c56f}')!

WAInitialRequestVisitor comment: ''!

!WAInitialRequestVisitor categoriesForClass!Seaside-Component-Visitors! !

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

