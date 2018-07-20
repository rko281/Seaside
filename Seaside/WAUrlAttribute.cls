"Filed out from Dolphin Smalltalk 7"!

WAAttribute subclass: #WAUrlAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUrlAttribute guid: (GUID fromString: '{89cc5a1e-2599-440a-b2db-55a8f3d5c1b0}')!
WAUrlAttribute comment: 'WAUrlAttribute represents a URL attribute. It converts between text entered on the configuration page and WAUrl instances.'!
!WAUrlAttribute categoriesForClass!Seaside-Core-Configuration! !
!WAUrlAttribute methodsFor!

accept: aVisitor	aVisitor visitUrlAttribute: self!

valueFromString: aString	^ aString isEmptyOrNil ifFalse: [ WAUrl absolute: aString ]! !
!WAUrlAttribute categoriesFor: #accept:!public!visiting! !
!WAUrlAttribute categoriesFor: #valueFromString:!converting!public! !

