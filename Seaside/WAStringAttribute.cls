"Filed out from Dolphin Smalltalk 7"!

WAAttribute subclass: #WAStringAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStringAttribute guid: (GUID fromString: '{2bbf7224-0542-4dfe-ac5d-089f8502f804}')!
WAStringAttribute comment: 'WAStringAttribute represents a string attribute. It does the trivial conversion between text entered on the Seaside configuration page and a string.'!
!WAStringAttribute categoriesForClass!Seaside-Core-Configuration! !
!WAStringAttribute methodsFor!

accept: aVisitor	aVisitor visitStringAttribute: self!

valueFromString: aString	^ aString isEmptyOrNil ifFalse: [ aString ]! !
!WAStringAttribute categoriesFor: #accept:!public!visiting! !
!WAStringAttribute categoriesFor: #valueFromString:!converting!public! !

