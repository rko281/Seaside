"Filed out from Dolphin Smalltalk"!

WAAttribute subclass: #WANumberAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WANumberAttribute guid: (GUID fromString: '{40af8d14-4830-4a95-b29a-4dcc9666300c}')!

WANumberAttribute comment: 'WANumberAttribute represents a number attribute. It converts between text entered on the configuration page and numbers.'!

!WANumberAttribute categoriesForClass!Seaside-Core-Configuration! !

!WANumberAttribute methodsFor!

accept: aVisitor	aVisitor visitNumberAttribute: self!

valueFromString: aString	^ aString isEmptyOrNil ifFalse: [ Number readFrom: aString readStream ]! !

!WANumberAttribute categoriesForMethods!
accept:!public!visiting! !
valueFromString:!converting!public! !
!

