"Filed out from Dolphin Smalltalk 7"!

WAAttribute subclass: #WAUrlAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUrlAttribute guid: (GUID fromString: '{8f5fa140-147d-4c56-bd25-397c36f716a1}')!
WAUrlAttribute comment: 'WAUrlAttribute represents a URL attribute. It converts between text entered on the configuration page and WAUrl instances.'!
!WAUrlAttribute categoriesForClass!Seaside-Core-Configuration! !
!WAUrlAttribute methodsFor!

accept: aVisitor	aVisitor visitUrlAttribute: self!

valueFromString: aString	^ aString isEmptyOrNil ifFalse: [ WAUrl absolute: aString ]! !
!WAUrlAttribute categoriesFor: #accept:!public!visiting! !
!WAUrlAttribute categoriesFor: #valueFromString:!converting!public! !

