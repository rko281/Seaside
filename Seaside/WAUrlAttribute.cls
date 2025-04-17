"Filed out from Dolphin Smalltalk"!

WAAttribute subclass: #WAUrlAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUrlAttribute guid: (GUID fromString: '{fc41170e-db4c-4e66-bd24-8a8ba1a29125}')!

WAUrlAttribute comment: 'WAUrlAttribute represents a URL attribute. It converts between text entered on the configuration page and WAUrl instances.'!

!WAUrlAttribute categoriesForClass!Configuration! !

!WAUrlAttribute methodsFor!

accept: aVisitor	aVisitor visitUrlAttribute: self!

valueFromString: aString	^ aString isEmptyOrNil ifFalse: [ WAUrl absolute: aString ]! !

!WAUrlAttribute categoriesForMethods!
accept:!public!visiting! !
valueFromString:!converting!public! !
!

