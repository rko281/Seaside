"Filed out from Dolphin Smalltalk"!

WAAttribute subclass: #WAPasswordAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAPasswordAttribute guid: (GUID fromString: '{720dba50-be2e-4022-bb8a-e672c0d8d444}')!

WAPasswordAttribute comment: 'WAPasswordAttribute represents a password attribute. When set from a string, it records a hashed value. On the Seaside configuration page it does not display its current value.'!

!WAPasswordAttribute categoriesForClass!Configuration! !

!WAPasswordAttribute methodsFor!

accept: aVisitor	aVisitor visitPasswordAttribute: self!

valueFromString: aString 	^ aString isEmptyOrNil ifFalse: [ GRPlatform current secureHashFor: aString ]! !

!WAPasswordAttribute categoriesForMethods!
accept:!public!visiting! !
valueFromString:!converting!public! !
!

