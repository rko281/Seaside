"Filed out from Dolphin Smalltalk 7"!

WAListAttribute subclass: #WAClassListAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClassListAttribute guid: (GUID fromString: '{fb63f1cf-267e-4fc3-9a3e-72475495a004}')!
WAClassListAttribute comment: 'WAClassListAttribute is an attribute that is restricted to a list of classes. The value will be an instance of the given class created with #new. '!
!WAClassListAttribute categoriesForClass!Seaside-Core-Configuration! !
!WAClassListAttribute methodsFor!

accept: aVisitor	aVisitor visitClassListAttribute: self!

stringForValue: anObject	^ anObject isNil ifFalse: [		anObject class name greaseString ]! !
!WAClassListAttribute categoriesFor: #accept:!public!visiting! !
!WAClassListAttribute categoriesFor: #stringForValue:!converting!public! !

