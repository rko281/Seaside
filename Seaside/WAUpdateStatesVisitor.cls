"Filed out from Dolphin Smalltalk 7"!

WAPainterVisitor subclass: #WAUpdateStatesVisitor
	instanceVariableNames: 'snapshot'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUpdateStatesVisitor guid: (GUID fromString: '{998159ef-2915-4872-a5c7-0d31addd3a86}')!
WAUpdateStatesVisitor comment: ''!
!WAUpdateStatesVisitor categoriesForClass!Seaside-Component-Visitors! !
!WAUpdateStatesVisitor methodsFor!

initializeWithSnapshot: aSnapshot	self initialize.	snapshot := aSnapshot!

snapshot	^ snapshot!

visitPresenter: aPresenter	aPresenter updateStates: self snapshot! !
!WAUpdateStatesVisitor categoriesFor: #initializeWithSnapshot:!initialization!public! !
!WAUpdateStatesVisitor categoriesFor: #snapshot!accessing!public! !
!WAUpdateStatesVisitor categoriesFor: #visitPresenter:!public!visiting! !

!WAUpdateStatesVisitor class methodsFor!

new	^ self snapshot: WASnapshot new!

snapshot: aSnapshot	^ self basicNew initializeWithSnapshot: aSnapshot; yourself! !
!WAUpdateStatesVisitor class categoriesFor: #new!instance creation!public! !
!WAUpdateStatesVisitor class categoriesFor: #snapshot:!instance creation!public! !

