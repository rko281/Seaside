"Filed out from Dolphin Smalltalk"!

WAAttribute subclass: #WANumberAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WANumberAttribute guid: (GUID fromString: '{b8e600da-2c15-4f10-9001-515631a7aac0}')!

WANumberAttribute comment: 'WANumberAttribute represents a number attribute. It converts between text entered on the configuration page and numbers.'!

!WANumberAttribute categoriesForClass!Configuration! !

!WANumberAttribute methodsFor!

accept: aVisitor	aVisitor visitNumberAttribute: self!

valueFromString: aString	^ aString isEmptyOrNil ifFalse: [ Number readFrom: aString readStream ]! !

!WANumberAttribute categoriesForMethods!
accept:!public!visiting! !
valueFromString:!converting!public! !
!

