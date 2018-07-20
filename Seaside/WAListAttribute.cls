"Filed out from Dolphin Smalltalk 7"!

WAAttribute subclass: #WAListAttribute
	instanceVariableNames: 'optionsBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAListAttribute guid: (GUID fromString: '{384f1521-ef2e-461e-bd48-268dbd4e3a8d}')!
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

