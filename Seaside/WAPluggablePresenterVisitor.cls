"Filed out from Dolphin Smalltalk 7"!

WAPainterVisitor subclass: #WAPluggablePresenterVisitor
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPluggablePresenterVisitor guid: (GUID fromString: '{8e795ab3-f35f-4bec-ad80-597990518d5b}')!
WAPluggablePresenterVisitor comment: ''!
!WAPluggablePresenterVisitor categoriesForClass!Seaside-Component-Visitors! !
!WAPluggablePresenterVisitor methodsFor!

block	^ block!

initializeWithBlock: aBlock	self initialize.	block := aBlock!

visitPresenter: aPresenter	self block value: aPresenter! !
!WAPluggablePresenterVisitor categoriesFor: #block!accessing!public! !
!WAPluggablePresenterVisitor categoriesFor: #initializeWithBlock:!initialization!public! !
!WAPluggablePresenterVisitor categoriesFor: #visitPresenter:!public!visiting! !

!WAPluggablePresenterVisitor class methodsFor!

block: aBlock	^ self basicNew initializeWithBlock: aBlock; yourself!

new	^ self block: [ :presenter | ]! !
!WAPluggablePresenterVisitor class categoriesFor: #block:!instance creation!public! !
!WAPluggablePresenterVisitor class categoriesFor: #new!instance creation!public! !

