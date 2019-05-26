"Filed out from Dolphin Smalltalk 7"!

WAFileHandlerListing subclass: #WATextFileHandlerListing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATextFileHandlerListing guid: (GUID fromString: '{bcf4e8ff-b5fb-4572-b783-7114eaba02d5}')!
WATextFileHandlerListing comment: ''!
!WATextFileHandlerListing categoriesForClass!Seaside-Core-Libraries! !
!WATextFileHandlerListing methodsFor!

responseForLibraries	context respond: [ :response |		response contentType: WAMimeType textPlain.		handler libraries do: [ :each |			response stream				nextPutAll: each name;				crlf ] ]!

responseForLibrary: aLibrary	context respond: [ :response |		response contentType: WAMimeType textPlain.		aLibrary fileSelectors do: [ :each |			response stream				nextPutAll: (aLibrary asFilename: each);				crlf ] ]! !
!WATextFileHandlerListing categoriesFor: #responseForLibraries!public!responding! !
!WATextFileHandlerListing categoriesFor: #responseForLibrary:!public!responding! !

