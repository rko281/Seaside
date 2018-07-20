"Filed out from Dolphin Smalltalk 7"!

WAAttribute subclass: #WAPasswordAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPasswordAttribute guid: (GUID fromString: '{91e83a49-4fac-4453-8f22-60719f52c1aa}')!
WAPasswordAttribute comment: 'WAPasswordAttribute represents a password attribute. When set from a string, it records a hashed value. On the Seaside configuration page it does not display its current value.'!
!WAPasswordAttribute categoriesForClass!Seaside-Core-Configuration! !
!WAPasswordAttribute methodsFor!

accept: aVisitor	aVisitor visitPasswordAttribute: self!

valueFromString: aString 	^ aString isEmptyOrNil ifFalse: [ GRPlatform current secureHashFor: aString ]! !
!WAPasswordAttribute categoriesFor: #accept:!public!visiting! !
!WAPasswordAttribute categoriesFor: #valueFromString:!converting!public! !

