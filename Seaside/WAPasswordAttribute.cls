"Filed out from Dolphin Smalltalk 7"!

WAAttribute subclass: #WAPasswordAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPasswordAttribute guid: (GUID fromString: '{e555575c-b034-4c50-8bfb-665e3f26b663}')!
WAPasswordAttribute comment: 'WAPasswordAttribute represents a password attribute. When set from a string, it records a hashed value. On the Seaside configuration page it does not display its current value.'!
!WAPasswordAttribute categoriesForClass!Seaside-Core-Configuration! !
!WAPasswordAttribute methodsFor!

accept: aVisitor	aVisitor visitPasswordAttribute: self!

valueFromString: aString 	^ aString isEmptyOrNil ifFalse: [ GRPlatform current secureHashFor: aString ]! !
!WAPasswordAttribute categoriesFor: #accept:!public!visiting! !
!WAPasswordAttribute categoriesFor: #valueFromString:!converting!public! !

