"Filed out from Dolphin Smalltalk 7"!

WAQualifiedValue subclass: #WAAccept
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAAccept guid: (GUID fromString: '{08eb2cb2-2bf5-41a9-aafd-7e2888701323}')!
WAAccept comment: 'A WAAccept is a WAQualifiedValue with a value that is an instance of WAMimeType. It represents how much a user agent prefers a certain mime type.'!
!WAAccept categoriesForClass!Seaside-Core-HTTP! !
!WAAccept class methodsFor!

valueClass	^ WAMimeType! !
!WAAccept class categoriesFor: #valueClass!private! !

