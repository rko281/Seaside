"Filed out from Dolphin Smalltalk 7"!

WAListAttribute subclass: #WACollectionAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACollectionAttribute guid: (GUID fromString: '{300b5c8d-35d9-44af-a872-35162f73b276}')!
WACollectionAttribute comment: ''!
!WACollectionAttribute categoriesForClass!Seaside-Core-Configuration! !
!WACollectionAttribute methodsFor!

accept: aVisitor	aVisitor visitCollectionAttribute: self!

default: aCollection	super default: (Array withAll: aCollection)!

initializeWithKey: aSymbol	super initializeWithKey: aSymbol.	self default: #()!

isCollectionAttribute	^ true! !
!WACollectionAttribute categoriesFor: #accept:!public!visiting! !
!WACollectionAttribute categoriesFor: #default:!accessing!public! !
!WACollectionAttribute categoriesFor: #initializeWithKey:!initialization!public! !
!WACollectionAttribute categoriesFor: #isCollectionAttribute!public!testing! !

