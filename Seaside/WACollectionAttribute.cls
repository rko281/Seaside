"Filed out from Dolphin Smalltalk 7"!

WAListAttribute subclass: #WACollectionAttribute
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACollectionAttribute guid: (GUID fromString: '{e72b2fa7-4e20-4aae-bf92-afe1d603f3a1}')!
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

