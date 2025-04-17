"Filed out from Dolphin Smalltalk"!

WAQualifiedValue subclass: #WAAccept
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAAccept guid: (GUID fromString: '{a8740f57-80e2-4e79-8d74-b16959041474}')!

WAAccept comment: 'A WAAccept is a WAQualifiedValue with a value that is an instance of WAMimeType. It represents how much a user agent prefers a certain mime type.'!

!WAAccept categoriesForClass!HTTP! !

!WAAccept class methodsFor!

valueClass	^ WAMimeType! !

!WAAccept class categoriesForMethods!
valueClass!private! !
!

