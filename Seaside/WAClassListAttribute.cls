"Filed out from Dolphin Smalltalk"!

WAListAttribute subclass: #WAClassListAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClassListAttribute guid: (GUID fromString: '{47f8e8eb-d15b-4a04-8fc4-40edad33f89e}')!

WAClassListAttribute comment: 'WAClassListAttribute is an attribute that is restricted to a list of classes. The value will be an instance of the given class created with #new. '!

!WAClassListAttribute categoriesForClass!Seaside-Core-Configuration! !

!WAClassListAttribute methodsFor!

accept: aVisitor	aVisitor visitClassListAttribute: self!

stringForValue: anObject	^ anObject isNil ifFalse: [		anObject class name greaseString ]! !

!WAClassListAttribute categoriesForMethods!
accept:!public!visiting! !
stringForValue:!converting!public! !
!

