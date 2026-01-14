"Filed out from Dolphin Smalltalk"!

WAAttribute subclass: #WAUrlAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUrlAttribute guid: (GUID fromString: '{5e36b0f8-7b1b-4072-8f9b-71fbca94f9f4}')!

WAUrlAttribute comment: 'WAUrlAttribute represents a URL attribute. It converts between text entered on the configuration page and WAUrl instances.'!

!WAUrlAttribute categoriesForClass!Seaside-Core-Configuration! !

!WAUrlAttribute methodsFor!

accept: aVisitor	aVisitor visitUrlAttribute: self!

valueFromString: aString	^ aString isEmptyOrNil ifFalse: [ WAUrl absolute: aString ]! !

!WAUrlAttribute categoriesForMethods!
accept:!public!visiting! !
valueFromString:!converting!public! !
!

