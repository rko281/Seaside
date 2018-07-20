"Filed out from Dolphin Smalltalk 7"!

WAFileHandlerListing subclass: #WAForbiddenFileHandlerListing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAForbiddenFileHandlerListing guid: (GUID fromString: '{e172433c-ba8d-4e43-8976-e3f4fc1711ec}')!
WAForbiddenFileHandlerListing comment: ''!
!WAForbiddenFileHandlerListing categoriesForClass!Seaside-Core-Libraries! !
!WAForbiddenFileHandlerListing methodsFor!

responseForLibraries	context responseGenerator		forbidden;		respond!

responseForLibrary: aLibrary 	context responseGenerator		forbidden;		respond! !
!WAForbiddenFileHandlerListing categoriesFor: #responseForLibraries!public!responding! !
!WAForbiddenFileHandlerListing categoriesFor: #responseForLibrary:!public!responding! !

