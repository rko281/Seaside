"Filed out from Dolphin Smalltalk"!

WAListAttribute subclass: #WAClassBindingAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClassBindingAttribute guid: (GUID fromString: '{072637f2-b46a-4fcf-a0cc-919566f83c53}')!

WAClassBindingAttribute comment: ''!

!WAClassBindingAttribute categoriesForClass!Seaside-Core-Configuration! !

!WAClassBindingAttribute methodsFor!

accept: aVisitor	aVisitor visitClassBindingAttribute: self!

default: aClass	default := aClass isNil		ifTrue: [ nil ]		ifFalse: [ GRPlatform current bindingOf: aClass ]!

stringForValue: aBinding 	^ aBinding isNil ifFalse: [ aBinding value name greaseString ]! !

!WAClassBindingAttribute categoriesForMethods!
accept:!public!visiting! !
default:!accessing!public! !
stringForValue:!converting!public! !
!

