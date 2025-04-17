"Filed out from Dolphin Smalltalk"!

WAAttribute subclass: #WAListAttribute
	instanceVariableNames: 'optionsBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAListAttribute guid: (GUID fromString: '{58e332f9-ab04-48cc-81b9-a0390f2a871d}')!

WAListAttribute comment: 'WAListAttribute is an attribute that is restricted to a list of values. Instance Variables:	options	<Block>	A block returning a list of possible values for the attribute'!

!WAListAttribute categoriesForClass!Configuration! !

!WAListAttribute methodsFor!

accept: aVisitor	aVisitor visitListAttribute: self!

options	^ optionsBlock isNil		ifTrue: [ #() ]		ifFalse: [ optionsBlock value ]!

options: aBlock	optionsBlock := aBlock!

valueFromString: aString 	self error: 'List attributes cannot be converted from Strings'! !

!WAListAttribute categoriesForMethods!
accept:!public!visiting! !
options!accessing!public! !
options:!accessing!public! !
valueFromString:!converting!public! !
!

