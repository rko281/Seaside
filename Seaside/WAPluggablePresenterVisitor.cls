"Filed out from Dolphin Smalltalk"!

WAPainterVisitor subclass: #WAPluggablePresenterVisitor
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPluggablePresenterVisitor guid: (GUID fromString: '{4e092a2c-e677-4ba7-ad9b-86d4ae66e0d1}')!

WAPluggablePresenterVisitor comment: ''!

!WAPluggablePresenterVisitor categoriesForClass!Seaside-Component-Visitors! !

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

