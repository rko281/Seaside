"Filed out from Dolphin Smalltalk"!

WAFileHandlerListingTest subclass: #WAForbiddenFileHandlerListingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAForbiddenFileHandlerListingTest guid: (GUID fromString: '{71a60154-4fc0-46a9-bbdf-767016a93301}')!

WAForbiddenFileHandlerListingTest comment: ''!

!WAForbiddenFileHandlerListingTest categoriesForClass!Libraries! !

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

