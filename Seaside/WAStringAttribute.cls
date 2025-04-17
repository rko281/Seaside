"Filed out from Dolphin Smalltalk"!

WAAttribute subclass: #WAStringAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAStringAttribute guid: (GUID fromString: '{4b54fc1c-6dd6-4cea-ab79-2a781e304c0d}')!

WAStringAttribute comment: 'WAStringAttribute represents a string attribute. It does the trivial conversion between text entered on the Seaside configuration page and a string.'!

!WAStringAttribute categoriesForClass!Configuration! !

!WAStringAttribute methodsFor!

accept: aVisitor	aVisitor visitStringAttribute: self!

valueFromString: aString	^ aString isEmptyOrNil ifFalse: [ aString ]! !

!WAStringAttribute categoriesForMethods!
accept:!public!visiting! !
valueFromString:!converting!public! !
!

