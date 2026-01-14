"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAVisitor guid: (GUID fromString: '{8b31c293-946c-452a-9b67-def0e269c34d}')!

WAVisitor comment: 'Common superclass for all visitors (visitor pattern)'!

!WAVisitor categoriesForClass!Seaside-Core-Utilities! !

!WAVisitor methodsFor!

start: anObject	self visit: anObject!

visit: anObject	anObject accept: self!

visitAll: aCollection	aCollection do: [ :each | self visit: each ]! !

!WAVisitor categoriesForMethods!
start:!public!visiting! !
visit:!public!visiting! !
visitAll:!public!visiting! !
!

!WAVisitor class methodsFor!

isAbstract 	^ self == WAVisitor! !

!WAVisitor class categoriesForMethods!
isAbstract!public!testing! !
!

