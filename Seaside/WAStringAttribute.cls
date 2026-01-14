"Filed out from Dolphin Smalltalk"!

WAAttribute subclass: #WAStringAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAStringAttribute guid: (GUID fromString: '{6e0d2313-2e32-4d3d-b832-2362d71578d6}')!

WAStringAttribute comment: 'WAStringAttribute represents a string attribute. It does the trivial conversion between text entered on the Seaside configuration page and a string.'!

!WAStringAttribute categoriesForClass!Seaside-Core-Configuration! !

!WAStringAttribute methodsFor!

accept: aVisitor	aVisitor visitStringAttribute: self!

valueFromString: aString	^ aString isEmptyOrNil ifFalse: [ aString ]! !

!WAStringAttribute categoriesForMethods!
accept:!public!visiting! !
valueFromString:!converting!public! !
!

