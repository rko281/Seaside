"Filed out from Dolphin Smalltalk"!

WAPainterVisitor subclass: #WAPluggablePresenterVisitor
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPluggablePresenterVisitor guid: (GUID fromString: '{e93b03d5-94f0-417f-9bad-9c868774c058}')!

WAPluggablePresenterVisitor comment: ''!

!WAPluggablePresenterVisitor categoriesForClass!Visitors! !

!WAPluggablePresenterVisitor methodsFor!

block	^ block!

initializeWithBlock: aBlock	self initialize.	block := aBlock!

visitPresenter: aPresenter	self block value: aPresenter! !

!WAPluggablePresenterVisitor categoriesForMethods!
block!accessing!public! !
initializeWithBlock:!initialization!public! !
visitPresenter:!public!visiting! !
!

!WAPluggablePresenterVisitor class methodsFor!

block: aBlock	^ self basicNew initializeWithBlock: aBlock; yourself!

new	^ self block: [ :presenter | ]! !

!WAPluggablePresenterVisitor class categoriesForMethods!
block:!instance creation!public! !
new!instance creation!public! !
!

