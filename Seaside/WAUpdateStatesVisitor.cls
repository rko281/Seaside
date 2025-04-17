"Filed out from Dolphin Smalltalk"!

WAPainterVisitor subclass: #WAUpdateStatesVisitor
	instanceVariableNames: 'snapshot'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUpdateStatesVisitor guid: (GUID fromString: '{e03f270b-f196-45ae-bcb9-923a3b6d90c1}')!

WAUpdateStatesVisitor comment: ''!

!WAUpdateStatesVisitor categoriesForClass!Visitors! !

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

