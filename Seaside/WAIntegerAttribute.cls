"Filed out from Dolphin Smalltalk 7"!

WANumberAttribute subclass: #WAIntegerAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAIntegerAttribute guid: (GUID fromString: '{9024aeed-88af-48b0-a9f2-5dc5cf4e7dfe}')!
WAIntegerAttribute comment: ''!
!WAIntegerAttribute categoriesForClass!Seaside-Core-Configuration! !
!WAIntegerAttribute methodsFor!

accept: aVisitor	aVisitor visitIntegerAttribute: self!

valueFromString: aString 	^ aString isEmptyOrNil ifFalse: [ aString greaseInteger ]! !
!WAIntegerAttribute categoriesFor: #accept:!public!visiting! !
!WAIntegerAttribute categoriesFor: #valueFromString:!converting!public! !

