"Filed out from Dolphin Smalltalk"!

WAListAttribute subclass: #WACollectionAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACollectionAttribute guid: (GUID fromString: '{a3fb45c2-5d0a-4250-ab7c-01e1ed90a0c4}')!

WACollectionAttribute comment: ''!

!WACollectionAttribute categoriesForClass!Seaside-Core-Configuration! !

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

