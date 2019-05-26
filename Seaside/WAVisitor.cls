"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAVisitor guid: (GUID fromString: '{1e35534e-0cd2-4779-83f6-de3bcbe9dae4}')!
WAVisitor comment: ''!
!WAVisitor categoriesForClass!Seaside-Core-Utilities! !
!WAVisitor methodsFor!

start: anObject	self visit: anObject!

visit: anObject	anObject accept: self!

visitAll: aCollection	aCollection do: [ :each | self visit: each ]! !
!WAVisitor categoriesFor: #start:!public!visiting! !
!WAVisitor categoriesFor: #visit:!public!visiting! !
!WAVisitor categoriesFor: #visitAll:!public!visiting! !

