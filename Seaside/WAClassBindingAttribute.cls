"Filed out from Dolphin Smalltalk 7"!

WAListAttribute subclass: #WAClassBindingAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClassBindingAttribute guid: (GUID fromString: '{bf0a6a04-166c-4f1b-b2d2-7a6aab5a51a0}')!
WAClassBindingAttribute comment: ''!
!WAClassBindingAttribute categoriesForClass!Seaside-Core-Configuration! !
!WAClassBindingAttribute methodsFor!

accept: aVisitor	aVisitor visitClassBindingAttribute: self!

default: aClass	default := aClass isNil		ifTrue: [ nil ]		ifFalse: [ GRPlatform current bindingOf: aClass ]!

stringForValue: aBinding 	^ aBinding isNil ifFalse: [ aBinding value name greaseString ]! !
!WAClassBindingAttribute categoriesFor: #accept:!public!visiting! !
!WAClassBindingAttribute categoriesFor: #default:!accessing!public! !
!WAClassBindingAttribute categoriesFor: #stringForValue:!converting!public! !

