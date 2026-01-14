"Filed out from Dolphin Smalltalk"!

WAAttribute subclass: #WAListAttribute
	instanceVariableNames: 'optionsBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAListAttribute guid: (GUID fromString: '{79ce1fc4-3d52-43e2-a88d-993da1389f61}')!

WAListAttribute comment: 'WAListAttribute is an attribute that is restricted to a list of values. Instance Variables:	options	<Block>	A block returning a list of possible values for the attribute'!

!WAListAttribute categoriesForClass!Seaside-Core-Configuration! !

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

