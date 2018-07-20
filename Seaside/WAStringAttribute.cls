"Filed out from Dolphin Smalltalk 7"!

WAAttribute subclass: #WAStringAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStringAttribute guid: (GUID fromString: '{3a71bd7d-3f3c-4398-a5f6-bd7d137208a4}')!
WAStringAttribute comment: 'WAStringAttribute represents a string attribute. It does the trivial conversion between text entered on the Seaside configuration page and a string.'!
!WAStringAttribute categoriesForClass!Seaside-Core-Configuration! !
!WAStringAttribute methodsFor!

accept: aVisitor	aVisitor visitStringAttribute: self!

valueFromString: aString	^ aString isEmptyOrNil ifFalse: [ aString ]! !
!WAStringAttribute categoriesFor: #accept:!public!visiting! !
!WAStringAttribute categoriesFor: #valueFromString:!converting!public! !

