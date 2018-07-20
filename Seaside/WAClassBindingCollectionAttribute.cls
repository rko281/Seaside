"Filed out from Dolphin Smalltalk 7"!

WAListAttribute subclass: #WAClassBindingCollectionAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClassBindingCollectionAttribute guid: (GUID fromString: '{a4d2b5f0-88d4-4f4f-9e11-07e3d6fd6fc8}')!
WAClassBindingCollectionAttribute comment: ''!
!WAClassBindingCollectionAttribute categoriesForClass!Seaside-Core-Configuration! !
!WAClassBindingCollectionAttribute methodsFor!

accept: aVisitor	aVisitor visitClassBindingCollectionAttribute: self!

default: aCollection	default := aCollection collect: [ :each |		GRPlatform current bindingOf: each ]!

initializeWithKey: aSymbol	super initializeWithKey: aSymbol.	self default: #()!

isCollectionAttribute	^ true! !
!WAClassBindingCollectionAttribute categoriesFor: #accept:!public!visiting! !
!WAClassBindingCollectionAttribute categoriesFor: #default:!accessing!public! !
!WAClassBindingCollectionAttribute categoriesFor: #initializeWithKey:!initialization!public! !
!WAClassBindingCollectionAttribute categoriesFor: #isCollectionAttribute!public!testing! !

