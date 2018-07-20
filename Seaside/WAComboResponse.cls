"Filed out from Dolphin Smalltalk 7"!

WAResponse subclass: #WAComboResponse
	instanceVariableNames: 'bufferedStream externalStream committed closed'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAComboResponse guid: (GUID fromString: '{ef5c6d63-e228-4d7e-b9a9-90e2a7a241ab}')!
WAComboResponse comment: 'WAComboResponse is a combination of a buffered and a streaming response. By default, WAComboResponse will buffer the entire response to be sent at the end of the request processing cycle. If streaming is desired, the response can be flushed by sending it the #flush message. Flushing a response will sent all previously buffered data using chunked transfer-encoding (which preserves persistent connections). Clients can flush the response as often as they want at appropriate points in their response generation; everything buffered up to that point will be sent. For example, a search results page might use something like:renderContentOn: aCanvas	"Render the search page"	self renderSearchLabelOn: aCanvas.	aCanvas flush. "flush before starting search to give immediate feedback"	self searchResultsDo:[:aResult|		self renderSearchResultOn: aCanvas.		aCanvas flush. "flush after each search result"	].After a response has been flushed once, header modifications are no longer possible and will raise a WAIllegalStateException.Server adaptors need to be aware that a committed response must be closed, when complete. An uncommitted response should be handled as usual by the server adapter.'!
!WAComboResponse categoriesForClass!Seaside-Core-HTTP! !
!WAComboResponse methodsFor!

addCookie: aCookie	"Add aCookie to the receiver. Raise an error if the response is committed."	self committedCheck.	^ super addCookie: aCookie!

binary	"put the response stream into binary mode"	bufferedStream := (GRCountingStream on: (GRPlatform current readWriteByteStream)).	externalStream binary!

bufferedStream	"The stream to buffer data before sending it"	^ bufferedStream!

bufferedStream: aStream	"The stream to buffer data before sending it"	bufferedStream := aStream!

close	"Send a zero-sized chunk to end the data transfer."	closed ifTrue: [ self error: 'Response is closed' ].	externalStream nextPutAll: '0'; crlf; crlf; flush.	closed := true!

commit	"Begin a partial transmission"	self committedCheck.	"Send the http request header and set the receiver to chunked encoding"	self headerAt: 'Transfer-Encoding' put: 'chunked'.	committed := true.	self writeStatusOn: externalStream.	self writeHeadersOn: externalStream.	self writeCookiesOn: externalStream.	externalStream crlf; flush!

committedCheck	"Raises a signal if this response is already committed."	self isCommitted 		ifTrue: [ WAIllegalStateException signal ]!

contents	"Answer the contents of the response. If the response is streaming, answer nil"	^ committed ifFalse: [ bufferedStream contents ]!

destroy	"Destroy the receiver"	super destroy.	bufferedStream := nil.	externalStream := nil!

externalStream	"The external (socket) stream to send data to"	^ externalStream!

externalStream: aSocketStream	"The external (socket) stream to send data to"	externalStream := aSocketStream!

flush	"Flush the receiver and send partial content"	committed ifFalse: [ self commit ].	"Write the partial content if any"	self nextChunk: bufferedStream count put: bufferedStream contents.	bufferedStream reset!

headerAt: aString append: aValue	"Appends a response header. Raises an error if the respone is committed."	self committedCheck.	^ super headerAt: aString append: aValue!

headerAt: aString put: aValue	"Sets a response header. Raises an error if the response is committed"	self committedCheck.	^ super headerAt: aString put: aValue!

initialize	"Initialize the receiver"	super initialize.	bufferedStream := GRPlatform current readWriteCharacterStream.	committed := false.	closed := false!

initializeOnBuffered: aBufferedStream external: anExternalStream	"Initialize the receiver"	self initialize.	bufferedStream := aBufferedStream.	externalStream := anExternalStream.	committed := false.	closed := false!

isChunked	^ (self headerAt: 'Transfer-Encoding' ifAbsent: [ nil ]) = 'chunked'!

isCommitted	"Return true if the response is committed, i.e., (partially) transmitted"	^ committed!

isStreamingResponse	"Return true if the receiver supports partial stream responses."	^ true!

nextChunk: anInteger put: data	"Write a chunk of data to the external stream. Does NOT write if no data is provided since this would logically end the chunked transfer. To end data transfer use #close instead. Raise an error if the response has been committed and closed.		Unfortunately the size of the chunk is not measured in bytes but characters so we need the ability to pass in the chunk size	see also	http://code.google.com/p/seaside/issues/detail?id=733"	data isEmpty ifTrue: [ ^ self ].	closed ifTrue: [ self error: 'Response is closed' ].	externalStream nextPutAll: (anInteger printStringBase: 16); crlf.	externalStream nextPutAll: data; crlf; flush!

nextChunkPut: data	"Write a chunk of data to the external stream. Does NOT write if no data is provided since this would logically end the chunked transfer. To end data transfer use #close instead. Raise an error if the response has been committed and closed."	self nextChunk: data size put: data!

removeHeaderAt: aString	"Removes all occurences of the header. Raises an error if the response is committed."	self committedCheck.	^ super removeHeaderAt: aString!

resetIfPossible	^ committed		ifTrue: [ false ]		ifFalse: [			self initializeFields.			bufferedStream reset.			true ]!

status: aNumber message: aString	"Set the response status. Raises an error if the response is committed."	self committedCheck.	^ super status: aNumber message: aString!

stream	"This answers the BUFFERED stream; to actually send the partial data you must #flush it"	^ bufferedStream!

writeContentOn: aStream	committed ifFalse: [ 		aStream nextPutAll: self contents ]!

writeHeadersOn: aStream	self isChunked ifFalse: [		self 		headerAt: 'Content-Length'		put: bufferedStream position ].	super writeHeadersOn: aStream ! !
!WAComboResponse categoriesFor: #addCookie:!accessing/cookies!public! !
!WAComboResponse categoriesFor: #binary!public!streaming! !
!WAComboResponse categoriesFor: #bufferedStream!accessing!public! !
!WAComboResponse categoriesFor: #bufferedStream:!accessing!public! !
!WAComboResponse categoriesFor: #close!initialization!public! !
!WAComboResponse categoriesFor: #commit!initialization!public! !
!WAComboResponse categoriesFor: #committedCheck!errors!public! !
!WAComboResponse categoriesFor: #contents!accessing!public! !
!WAComboResponse categoriesFor: #destroy!initialization!public! !
!WAComboResponse categoriesFor: #externalStream!accessing!public! !
!WAComboResponse categoriesFor: #externalStream:!accessing!public! !
!WAComboResponse categoriesFor: #flush!public! !
!WAComboResponse categoriesFor: #headerAt:append:!accessing/headers!public! !
!WAComboResponse categoriesFor: #headerAt:put:!accessing/headers!public! !
!WAComboResponse categoriesFor: #initialize!initialization!public! !
!WAComboResponse categoriesFor: #initializeOnBuffered:external:!initialization!public! !
!WAComboResponse categoriesFor: #isChunked!private! !
!WAComboResponse categoriesFor: #isCommitted!public!testing! !
!WAComboResponse categoriesFor: #isStreamingResponse!public!testing! !
!WAComboResponse categoriesFor: #nextChunk:put:!public!streaming! !
!WAComboResponse categoriesFor: #nextChunkPut:!public!streaming! !
!WAComboResponse categoriesFor: #removeHeaderAt:!accessing/headers!public! !
!WAComboResponse categoriesFor: #resetIfPossible!convenience!public! !
!WAComboResponse categoriesFor: #status:message:!accessing/status!public! !
!WAComboResponse categoriesFor: #stream!accessing!public! !
!WAComboResponse categoriesFor: #writeContentOn:!public!writing! !
!WAComboResponse categoriesFor: #writeHeadersOn:!public!writing! !

!WAComboResponse class methodsFor!

external: anExternalStream	^ self		onBuffered: (GRPlatform current writeCharacterStreamOn: (String new: 4096))		external: anExternalStream!

onBuffered: aBufferedStream external: anExternalStream	^ self basicNew initializeOnBuffered: aBufferedStream external: anExternalStream! !
!WAComboResponse class categoriesFor: #external:!instance creation!public! !
!WAComboResponse class categoriesFor: #onBuffered:external:!instance creation!public! !

