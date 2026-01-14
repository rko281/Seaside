"Filed out from Dolphin Smalltalk"!

WAPresenterGuide subclass: #WAVisiblePresenterGuide
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAVisiblePresenterGuide guid: (GUID fromString: '{8f71cfe0-daa0-4dd5-b30d-2ba3afd9ff88}')!

WAVisiblePresenterGuide comment: 'Visit the tree of all Presenters and their registered #children. Do not visit a Decoration''s #next Decoration if the Decoration indicates that it is not visible.'!

!WAVisiblePresenterGuide categoriesForClass!Seaside-Component-Visitors! !

!WAVisiblePresenterGuide methodsFor!

shouldVisitNextPresenterOf: aDecoration	^ aDecoration isDelegation not!

visitDecoration: aDecoration	super visitDecoration: aDecoration.	(self shouldVisitNextPresenterOf: aDecoration)		ifTrue: [ aDecoration next accept: self ]!

visitPresenter: aPresenter	super visitPresenter: aPresenter.	aPresenter childrenDo: [ :each | self visit: each ]! !

!WAVisiblePresenterGuide categoriesForMethods!
shouldVisitNextPresenterOf:!private! !
visitDecoration:!public!visiting! !
visitPresenter:!public!visiting! !
!

