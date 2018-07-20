"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAVisitor guid: (GUID fromString: '{8e444a69-03b9-4f10-8fe3-18c973b9eb83}')!
WAVisitor comment: ''!
!WAVisitor categoriesForClass!Seaside-Core-Utilities! !
!WAVisitor methodsFor!

start: anObject	self visit: anObject!

visit: anObject	anObject accept: self!

visitAll: aCollection	aCollection do: [ :each | self visit: each ]! !
!WAVisitor categoriesFor: #start:!public!visiting! !
!WAVisitor categoriesFor: #visit:!public!visiting! !
!WAVisitor categoriesFor: #visitAll:!public!visiting! !

