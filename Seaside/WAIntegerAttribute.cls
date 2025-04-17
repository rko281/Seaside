"Filed out from Dolphin Smalltalk"!

WANumberAttribute subclass: #WAIntegerAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAIntegerAttribute guid: (GUID fromString: '{7eba4af0-7527-4fdc-8fd6-837d39fc6ef5}')!

WAIntegerAttribute comment: ''!

!WAIntegerAttribute categoriesForClass!Configuration! !

!WAIntegerAttribute methodsFor!

accept: aVisitor	aVisitor visitIntegerAttribute: self!

valueFromString: aString 	^ aString isEmptyOrNil ifFalse: [ aString greaseInteger ]! !

!WAIntegerAttribute categoriesForMethods!
accept:!public!visiting! !
valueFromString:!converting!public! !
!

