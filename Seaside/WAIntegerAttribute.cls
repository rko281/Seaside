"Filed out from Dolphin Smalltalk"!

WANumberAttribute subclass: #WAIntegerAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAIntegerAttribute guid: (GUID fromString: '{e35881fe-e207-4d5f-88df-ac7f1a77e919}')!

WAIntegerAttribute comment: ''!

!WAIntegerAttribute categoriesForClass!Seaside-Core-Configuration! !

!WAIntegerAttribute methodsFor!

accept: aVisitor	aVisitor visitIntegerAttribute: self!

valueFromString: aString 	^ aString isEmptyOrNil ifFalse: [ aString greaseInteger ]! !

!WAIntegerAttribute categoriesForMethods!
accept:!public!visiting! !
valueFromString:!converting!public! !
!

