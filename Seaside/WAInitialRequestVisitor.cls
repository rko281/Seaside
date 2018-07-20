"Filed out from Dolphin Smalltalk 7"!

WAPainterVisitor subclass: #WAInitialRequestVisitor
	instanceVariableNames: 'request'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAInitialRequestVisitor guid: (GUID fromString: '{bbd6e2f1-5d99-4538-9007-306ac3a4dcc4}')!
WAInitialRequestVisitor comment: ''!
!WAInitialRequestVisitor categoriesForClass!Seaside-Component-Visitors! !
!WAInitialRequestVisitor methodsFor!

initializeWithRequest: aRequest	self initialize.	request := aRequest!

request	^ request!

visitPresenter: aPresenter	aPresenter initialRequest: self request! !
!WAInitialRequestVisitor categoriesFor: #initializeWithRequest:!initialization!public! !
!WAInitialRequestVisitor categoriesFor: #request!accessing!public! !
!WAInitialRequestVisitor categoriesFor: #visitPresenter:!public!visiting! !

!WAInitialRequestVisitor class methodsFor!

new	^ self request: nil!

request: aRequest	^ self basicNew initializeWithRequest: aRequest; yourself! !
!WAInitialRequestVisitor class categoriesFor: #new!instance creation!public! !
!WAInitialRequestVisitor class categoriesFor: #request:!instance creation!public! !

