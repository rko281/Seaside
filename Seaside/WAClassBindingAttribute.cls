"Filed out from Dolphin Smalltalk"!

WAListAttribute subclass: #WAClassBindingAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClassBindingAttribute guid: (GUID fromString: '{0e706618-2119-47f7-8751-8d4130f9ce6e}')!

WAClassBindingAttribute comment: ''!

!WAClassBindingAttribute categoriesForClass!Configuration! !

!WAClassBindingAttribute methodsFor!

accept: aVisitor	aVisitor visitClassBindingAttribute: self!

default: aClass	default := aClass isNil		ifTrue: [ nil ]		ifFalse: [ GRPlatform current bindingOf: aClass ]!

stringForValue: aBinding 	^ aBinding isNil ifFalse: [ aBinding value name greaseString ]! !

!WAClassBindingAttribute categoriesForMethods!
accept:!public!visiting! !
default:!accessing!public! !
stringForValue:!converting!public! !
!

