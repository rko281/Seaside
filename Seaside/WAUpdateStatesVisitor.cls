"Filed out from Dolphin Smalltalk"!

WAPainterVisitor subclass: #WAUpdateStatesVisitor
	instanceVariableNames: 'snapshot'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUpdateStatesVisitor guid: (GUID fromString: '{1a66ac03-a421-4065-8c4f-76ef80082e17}')!

WAUpdateStatesVisitor comment: ''!

!WAUpdateStatesVisitor categoriesForClass!Seaside-Component-Visitors! !

!WAUpdateStatesVisitor methodsFor!

initializeWithSnapshot: aSnapshot	self initialize.	snapshot := aSnapshot!

snapshot	^ snapshot!

visitPresenter: aPresenter	aPresenter updateStates: self snapshot! !

!WAUpdateStatesVisitor categoriesForMethods!
initializeWithSnapshot:!initialization!public! !
snapshot!accessing!public! !
visitPresenter:!public!visiting! !
!

!WAUpdateStatesVisitor class methodsFor!

new	^ self snapshot: WASnapshot new!

snapshot: aSnapshot	^ self basicNew initializeWithSnapshot: aSnapshot; yourself! !

!WAUpdateStatesVisitor class categoriesForMethods!
new!instance creation!public! !
snapshot:!instance creation!public! !
!

