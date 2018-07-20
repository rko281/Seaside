"Filed out from Dolphin Smalltalk 7"!

WAFileHandlerListing subclass: #WATextFileHandlerListing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WATextFileHandlerListing guid: (GUID fromString: '{db1da470-4d34-44ca-9c7a-e2b7ee7fb69a}')!
WATextFileHandlerListing comment: ''!
!WATextFileHandlerListing categoriesForClass!Seaside-Core-Libraries! !
!WATextFileHandlerListing methodsFor!

responseForLibraries	context respond: [ :response |		response contentType: WAMimeType textPlain.		handler libraries do: [ :each |			response stream				nextPutAll: each name;				crlf ] ]!

responseForLibrary: aLibrary	context respond: [ :response |		response contentType: WAMimeType textPlain.		aLibrary fileSelectors do: [ :each |			response stream				nextPutAll: (aLibrary asFilename: each);				crlf ] ]! !
!WATextFileHandlerListing categoriesFor: #responseForLibraries!public!responding! !
!WATextFileHandlerListing categoriesFor: #responseForLibrary:!public!responding! !

