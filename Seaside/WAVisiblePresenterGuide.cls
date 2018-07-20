"Filed out from Dolphin Smalltalk 7"!

WAPresenterGuide subclass: #WAVisiblePresenterGuide
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAVisiblePresenterGuide guid: (GUID fromString: '{eae6db69-ad9f-4f07-9486-d925249a89ab}')!
WAVisiblePresenterGuide comment: 'Visit the tree of all Presenters and their registered #children. Do not visit a Decoration''s #next Decoration if the Decoration indicates that it is not visible.'!
!WAVisiblePresenterGuide categoriesForClass!Seaside-Component-Visitors! !
!WAVisiblePresenterGuide methodsFor!

shouldVisitNextPresenterOf: aDecoration	^ aDecoration isDelegation not!

visitDecoration: aDecoration	super visitDecoration: aDecoration.	(self shouldVisitNextPresenterOf: aDecoration)		ifTrue: [ aDecoration next accept: self ]!

visitPresenter: aPresenter	super visitPresenter: aPresenter.	aPresenter childrenDo: [ :each | self visit: each ]! !
!WAVisiblePresenterGuide categoriesFor: #shouldVisitNextPresenterOf:!private! !
!WAVisiblePresenterGuide categoriesFor: #visitDecoration:!public!visiting! !
!WAVisiblePresenterGuide categoriesFor: #visitPresenter:!public!visiting! !

