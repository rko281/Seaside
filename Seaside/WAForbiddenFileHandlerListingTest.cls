"Filed out from Dolphin Smalltalk 7"!

WAFileHandlerListingTest subclass: #WAForbiddenFileHandlerListingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAForbiddenFileHandlerListingTest guid: (GUID fromString: '{bf2a533f-693e-43d9-b2cb-832e672ed3bd}')!
WAForbiddenFileHandlerListingTest comment: ''!
!WAForbiddenFileHandlerListingTest categoriesForClass!Seaside-Tests-Core-Libraries! !
!WAForbiddenFileHandlerListingTest methodsFor!

expectedLibrariesContents	^ 'forbidden'!

expectedLibraryContents	^ 'forbidden'!

expectedMimeType	^ WAMimeType textPlain!

expectedStatus	^ 403!

handlerClass	^ WAForbiddenFileHandlerListing! !
!WAForbiddenFileHandlerListingTest categoriesFor: #expectedLibrariesContents!public!testing! !
!WAForbiddenFileHandlerListingTest categoriesFor: #expectedLibraryContents!public!testing! !
!WAForbiddenFileHandlerListingTest categoriesFor: #expectedMimeType!public!testing! !
!WAForbiddenFileHandlerListingTest categoriesFor: #expectedStatus!public!testing! !
!WAForbiddenFileHandlerListingTest categoriesFor: #handlerClass!public!testing! !

