"Filed out from Dolphin Smalltalk"!

WAResponse subclass: #WAComboResponse
	instanceVariableNames: 'bufferedStream externalStream committed closed'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAComboResponse guid: (GUID fromString: '{45e922dd-3d57-4eb0-9dbd-616dba3cf154}')!

WAComboResponse comment: 'WAComboResponse is a combination of a buffered and a streaming response. By default, WAComboResponse will buffer the entire response to be sent at the end of the request processing cycle. If streaming is desired, the response can be flushed by sending it the #flush message. Flushing a response will sent all previously buffered data using chunked transfer-encoding (which preserves persistent connections). Clients can flush the response as often as they want at appropriate points in their response generation; everything buffered up to that point will be sent. For example, a search results page might use something like:renderContentOn: aCanvas	"Render the search page"	self renderSearchLabelOn: aCanvas.	self requestContext response flush. "flush before starting search to give immediate feedback"	self searchResultsDo: [ :result |		self renderSearchResult: result on: aCanvas.		self requestContext response flush "flush after each search result" ]After a response has been flushed once, header modifications are no longer possible and will raise a WAIllegalStateException.Server adaptors need to be aware that a committed response must be closed, when complete. An uncommitted response should be handled as usual by the server adapter.'!

!WAComboResponse categoriesForClass!HTTP! !

!WAComboResponse methodsFor!

addCookie: aCookie	"Add aCookie to the receiver. Raise an error if the response is committed."	self committedCheck.	^ super addCookie: aCookie!

binary	"put the response stream into binary mode"	bufferedStream := (GRCountingStream on: (GRPlatform current readWriteByteStream)).	externalStream binary!

bufferedStream	"The stream to buffer data before sending it"	^ bufferedStream!

bufferedStream: aStream	"The stream to buffer data before sending it"	bufferedStream := aStream!

close	"Send a zero-sized chunk to end the data transfer."	closed ifTrue: [ self error: 'Response is closed' ].	externalStream nextPutAll: '0'; crlf; crlf; flush.	closed := true!

commit	"Begin a partial transmission"	self committedCheck.	"Send the http request header and set the receiver to chunked encoding"	self headerAt: 'Transfer-Encoding' put: 'chunked'.	committed := true.	self writeStatusOn: externalStream.	self writeHeadersOn: externalStream.	self writeCookiesOn: externalStream.	externalStream crlf; flush!

committedCheck	"Raises a signal if this response is already committed."	self isCommitted 		ifTrue: [ WAIllegalStateException signal ]!

contents	"Answer the contents of the response. If the response is streaming, answer nil"	^ committed ifFalse: [ bufferedStream contents ]!

destroy	"Destroy the receiver"	super destroy.	bufferedStream := nil.	externalStream := nil!

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

nextChunk: anInteger put: data	"Write a chunk of data to the external stream. Does NOT write if no data is provided since this would logically end the chunked transfer. To end data transfer use #close instead. Raise an error if the response has been committed and closed.		Unfortunately the size of the chunk is not measured in bytes but characters so we need the ability to pass in the chunk size	see also	http://code.google.com/p/seaside/issues/detail?id=733"	data isEmpty ifTrue: [ ^ self ].	closed ifTrue: [ self error: 'Response is closed' ].	externalStream nextPutAll: (anInteger printStringBase: 16); crlf.	externalStream nextPutAll: data; crlf; flush!

nextChunkPut: data	"Write a chunk of data to the external stream. Does NOT write if no data is provided since this would logically end the chunked transfer. To end data transfer use #close instead. Raise an error if the response has been committed and closed."	self nextChunk: data size put: data!

removeHeaderAt: aString	"Removes all occurences of the header. Raises an error if the response is committed."	self committedCheck.	^ super removeHeaderAt: aString!

resetIfPossible	^ committed		ifTrue: [ false ]		ifFalse: [			self initializeFields.			bufferedStream reset.			true ]!

status: aNumber message: aString	"Set the response status. Raises an error if the response is committed."	self committedCheck.	^ super status: aNumber message: aString!

stream	"This answers the BUFFERED stream; to actually send the partial data you must #flush it"	^ bufferedStream!

writeContentAsStringOn: aStream 	committed ifFalse: [ 		aStream nextPutAll: self contents asString ]!

writeContentOn: aStream	committed ifFalse: [ 		aStream nextPutAll: self contents ]!

writeHeadersOn: aStream	self isChunked ifFalse: [		self 		headerAt: 'Content-Length'		put: bufferedStream position ].	super writeHeadersOn: aStream! !

!WAComboResponse categoriesForMethods!
addCookie:!accessing/cookies!public! !
binary!public!streaming! !
bufferedStream!accessing!public! !
bufferedStream:!accessing!public! !
close!initialization!public! !
commit!initialization!public! !
committedCheck!errors!public! !
contents!accessing!public! !
destroy!initialization!public! !
externalStream!accessing!public! !
externalStream:!accessing!public! !
flush!public! !
headerAt:append:!accessing/headers!public! !
headerAt:put:!accessing/headers!public! !
initialize!initialization!public! !
initializeOnBuffered:external:!initialization!public! !
isChunked!private! !
isCommitted!public!testing! !
isStreamingResponse!public!testing! !
nextChunk:put:!public!streaming! !
nextChunkPut:!public!streaming! !
removeHeaderAt:!accessing/headers!public! !
resetIfPossible!convenience!public! !
status:message:!accessing/status!public! !
stream!accessing!public! !
writeContentAsStringOn:!public!writing! !
writeContentOn:!public!writing! !
writeHeadersOn:!public!writing! !
!

!WAComboResponse class methodsFor!

external: anExternalStream	^ self		onBuffered: (GRPlatform current writeCharacterStreamOn: (String new: 4096))		external: anExternalStream!

onBuffered: aBufferedStream external: anExternalStream	^ self basicNew initializeOnBuffered: aBufferedStream external: anExternalStream! !

!WAComboResponse class categoriesForMethods!
external:!instance creation!public! !
onBuffered:external:!instance creation!public! !
!

