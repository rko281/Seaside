"Filed out from Dolphin Smalltalk 7"!

WAListAttribute subclass: #WAClassBindingCollectionAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAClassBindingCollectionAttribute guid: (GUID fromString: '{15ff3a9b-5def-4e1e-b067-53d57dc348b1}')!
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

