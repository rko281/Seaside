"Filed out from Dolphin Smalltalk"!

WAListAttribute subclass: #WAClassListAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClassListAttribute guid: (GUID fromString: '{3793ae80-c905-42c9-a18e-c29e670a5307}')!

WAClassListAttribute comment: 'WAClassListAttribute is an attribute that is restricted to a list of classes. The value will be an instance of the given class created with #new. '!

!WAClassListAttribute categoriesForClass!Configuration! !

!WAClassListAttribute methodsFor!

accept: aVisitor	aVisitor visitClassListAttribute: self!

stringForValue: anObject	^ anObject isNil ifFalse: [		anObject class name greaseString ]! !

!WAClassListAttribute categoriesForMethods!
accept:!public!visiting! !
stringForValue:!converting!public! !
!

