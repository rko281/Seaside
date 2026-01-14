"Filed out from Dolphin Smalltalk"!

WAAttribute subclass: #WAPasswordAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPasswordAttribute guid: (GUID fromString: '{382d84e2-ba61-4d49-9855-90fe86d70995}')!

WAPasswordAttribute comment: 'WAPasswordAttribute represents a password attribute. When set from a string, it records a hashed value. On the Seaside configuration page it does not display its current value.'!

!WAPasswordAttribute categoriesForClass!Seaside-Core-Configuration! !

!WAPasswordAttribute methodsFor!

accept: aVisitor	aVisitor visitPasswordAttribute: self!

valueFromString: aString 	^ aString isEmptyOrNil ifFalse: [ GRPlatform current secureHashFor: aString ]! !

!WAPasswordAttribute categoriesForMethods!
accept:!public!visiting! !
valueFromString:!converting!public! !
!

