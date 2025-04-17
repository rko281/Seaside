"Filed out from Dolphin Smalltalk"!

WAFileHandlerListing subclass: #WATextFileHandlerListing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WATextFileHandlerListing guid: (GUID fromString: '{1b16985e-d730-4cd7-a4e1-5c4e15139e5d}')!

WATextFileHandlerListing comment: ''!

!WATextFileHandlerListing categoriesForClass!Libraries! !

!WATextFileHandlerListing methodsFor!

responseForLibraries	context respond: [ :response |		response contentType: WAMimeType textPlain.		handler libraries do: [ :each |			response stream				nextPutAll: each name;				crlf ] ]!

responseForLibrary: aLibrary	context respond: [ :response |		response contentType: WAMimeType textPlain.		aLibrary fileSelectors do: [ :each |			response stream				nextPutAll: (aLibrary asFilename: each);				crlf ] ]! !

!WATextFileHandlerListing categoriesForMethods!
responseForLibraries!public!responding! !
responseForLibrary:!public!responding! !
!

