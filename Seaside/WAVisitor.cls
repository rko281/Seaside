"Filed out from Dolphin Smalltalk"!

WAObject subclass: #WAVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAVisitor guid: (GUID fromString: '{6495fd48-dd35-4932-b51c-72cd0fd1ba60}')!

WAVisitor comment: 'Common superclass for all visitors (visitor pattern)'!

!WAVisitor categoriesForClass!Utilities! !

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

