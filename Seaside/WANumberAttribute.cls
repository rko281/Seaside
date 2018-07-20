"Filed out from Dolphin Smalltalk 7"!

WAAttribute subclass: #WANumberAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WANumberAttribute guid: (GUID fromString: '{1b688079-b5c5-44e3-bc9e-dc4b868f26d6}')!
WANumberAttribute comment: 'WANumberAttribute represents a number attribute. It converts between text entered on the configuration page and numbers.'!
!WANumberAttribute categoriesForClass!Seaside-Core-Configuration! !
!WANumberAttribute methodsFor!

accept: aVisitor	aVisitor visitNumberAttribute: self!

valueFromString: aString	^ aString isEmptyOrNil ifFalse: [ Number readFrom: aString readStream ]! !
!WANumberAttribute categoriesFor: #accept:!public!visiting! !
!WANumberAttribute categoriesFor: #valueFromString:!converting!public! !

