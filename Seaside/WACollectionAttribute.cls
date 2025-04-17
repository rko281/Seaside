"Filed out from Dolphin Smalltalk"!

WAListAttribute subclass: #WACollectionAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACollectionAttribute guid: (GUID fromString: '{e4240c0f-824e-4e51-96b2-fdb0c342f2a8}')!

WACollectionAttribute comment: ''!

!WACollectionAttribute categoriesForClass!Configuration! !

!WACollectionAttribute methodsFor!

accept: aVisitor	aVisitor visitCollectionAttribute: self!

default: aCollection	super default: (Array withAll: aCollection)!

initializeWithKey: aSymbol	super initializeWithKey: aSymbol.	self default: #()!

isCollectionAttribute	^ true! !

!WACollectionAttribute categoriesForMethods!
accept:!public!visiting! !
default:!accessing!public! !
initializeWithKey:!initialization!public! !
isCollectionAttribute!public!testing! !
!

