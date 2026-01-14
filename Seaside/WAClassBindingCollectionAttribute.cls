"Filed out from Dolphin Smalltalk"!

WAListAttribute subclass: #WAClassBindingCollectionAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAClassBindingCollectionAttribute guid: (GUID fromString: '{4a46d434-4db9-4b94-98fc-3ed32d79962a}')!

WAClassBindingCollectionAttribute comment: ''!

!WAClassBindingCollectionAttribute categoriesForClass!Seaside-Core-Configuration! !

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

