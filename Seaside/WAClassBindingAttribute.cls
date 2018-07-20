"Filed out from Dolphin Smalltalk 7"!

WAListAttribute subclass: #WAClassBindingAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClassBindingAttribute guid: (GUID fromString: '{c74702ea-8bb6-4b4a-ab82-77cac1efd7a4}')!
WAClassBindingAttribute comment: ''!
!WAClassBindingAttribute categoriesForClass!Seaside-Core-Configuration! !
!WAClassBindingAttribute methodsFor!

accept: aVisitor	aVisitor visitClassBindingAttribute: self!

default: aClass	default := aClass isNil		ifTrue: [ nil ]		ifFalse: [ GRPlatform current bindingOf: aClass ]!

stringForValue: aBinding 	^ aBinding isNil ifFalse: [ aBinding value name greaseString ]! !
!WAClassBindingAttribute categoriesFor: #accept:!public!visiting! !
!WAClassBindingAttribute categoriesFor: #default:!accessing!public! !
!WAClassBindingAttribute categoriesFor: #stringForValue:!converting!public! !

