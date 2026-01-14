"Filed out from Dolphin Smalltalk"!

WAFileHandlerListing subclass: #WATextFileHandlerListing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATextFileHandlerListing guid: (GUID fromString: '{290ec62b-db34-4d52-b7a5-21333ebe2d92}')!

WATextFileHandlerListing comment: ''!

!WATextFileHandlerListing categoriesForClass!Seaside-Core-Libraries! !

!WATextFileHandlerListing methodsFor!

responseForLibraries	context respond: [ :response |		response contentType: WAMimeType textPlain.		handler libraries do: [ :each |			response stream				nextPutAll: each name;				crlf ] ]!

responseForLibrary: aLibrary	context respond: [ :response |		response contentType: WAMimeType textPlain.		aLibrary fileSelectors do: [ :each |			response stream				nextPutAll: (aLibrary asFilename: each);				crlf ] ]! !

!WATextFileHandlerListing categoriesForMethods!
responseForLibraries!public!responding! !
responseForLibrary:!public!responding! !
!

