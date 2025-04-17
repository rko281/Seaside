"Filed out from Dolphin Smalltalk"!

WAListAttribute subclass: #WAClassBindingCollectionAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClassBindingCollectionAttribute guid: (GUID fromString: '{23df4562-a079-4c70-b5c4-91fbc6b0be76}')!

WAClassBindingCollectionAttribute comment: ''!

!WAClassBindingCollectionAttribute categoriesForClass!Configuration! !

!WAClassBindingCollectionAttribute methodsFor!

accept: aVisitor	aVisitor visitClassBindingCollectionAttribute: self!

default: aCollection	default := aCollection collect: [ :each |		GRPlatform current bindingOf: each ]!

initializeWithKey: aSymbol	super initializeWithKey: aSymbol.	self default: #()!

isCollectionAttribute	^ true! !

!WAClassBindingCollectionAttribute categoriesForMethods!
accept:!public!visiting! !
default:!accessing!public! !
initializeWithKey:!initialization!public! !
isCollectionAttribute!public!testing! !
!

