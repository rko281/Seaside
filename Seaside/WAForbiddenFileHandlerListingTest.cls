"Filed out from Dolphin Smalltalk"!

WAFileHandlerListingTest subclass: #WAForbiddenFileHandlerListingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAForbiddenFileHandlerListingTest guid: (GUID fromString: '{81d46a3f-0bbd-4d65-ac17-ec6f0f24333d}')!

WAForbiddenFileHandlerListingTest comment: ''!

!WAForbiddenFileHandlerListingTest categoriesForClass!Seaside-Tests-Core-Libraries! !

!WAForbiddenFileHandlerListingTest methodsFor!

expectedLibrariesContents	^ 'forbidden'!

expectedLibraryContents	^ 'forbidden'!

expectedMimeType	^ WAMimeType textPlain!

expectedStatus	^ 403!

handlerClass	^ WAForbiddenFileHandlerListing! !

!WAForbiddenFileHandlerListingTest categoriesForMethods!
expectedLibrariesContents!public!testing! !
expectedLibraryContents!public!testing! !
expectedMimeType!public!testing! !
expectedStatus!public!testing! !
handlerClass!public!testing! !
!

