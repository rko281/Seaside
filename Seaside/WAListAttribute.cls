"Filed out from Dolphin Smalltalk 7"!

WAAttribute subclass: #WAListAttribute
	instanceVariableNames: 'optionsBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAListAttribute guid: (GUID fromString: '{c57cb58b-c292-46c0-a04b-2d32d6eed161}')!
WAListAttribute comment: 'WAListAttribute is an attribute that is restricted to a list of values. Instance Variables:	options	<Block>	A block returning a list of possible values for the attribute'!
!WAListAttribute categoriesForClass!Seaside-Core-Configuration! !
!WAListAttribute methodsFor!

accept: aVisitor	aVisitor visitListAttribute: self!

options	^ optionsBlock isNil		ifTrue: [ #() ]		ifFalse: [ optionsBlock value ]!

options: aBlock	optionsBlock := aBlock!

valueFromString: aString 	self error: 'List attributes cannot be converted from Strings'! !
!WAListAttribute categoriesFor: #accept:!public!visiting! !
!WAListAttribute categoriesFor: #options!accessing!public! !
!WAListAttribute categoriesFor: #options:!accessing!public! !
!WAListAttribute categoriesFor: #valueFromString:!converting!public! !

