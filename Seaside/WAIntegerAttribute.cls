"Filed out from Dolphin Smalltalk 7"!

WANumberAttribute subclass: #WAIntegerAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAIntegerAttribute guid: (GUID fromString: '{212da252-c38c-4464-a0c4-891d2a0b80c2}')!
WAIntegerAttribute comment: ''!
!WAIntegerAttribute categoriesForClass!Seaside-Core-Configuration! !
!WAIntegerAttribute methodsFor!

accept: aVisitor	aVisitor visitIntegerAttribute: self!

valueFromString: aString 	^ aString isEmptyOrNil ifFalse: [ aString greaseInteger ]! !
!WAIntegerAttribute categoriesFor: #accept:!public!visiting! !
!WAIntegerAttribute categoriesFor: #valueFromString:!converting!public! !

