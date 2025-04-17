"Filed out from Dolphin Smalltalk"!

WAResponse subclass: #WABufferedResponse
	instanceVariableNames: 'contentsStream'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABufferedResponse guid: (GUID fromString: '{9a0272fe-63ef-4294-a069-cd192d6c95ca}')!

WABufferedResponse comment: 'A WABufferedResponse is a concrete implementation of a HTTP response. Its contentsStream is used to represent the body of the message.Instance Variables	contentsStream:		<WriteStream> The contents of this message.'!

!WABufferedResponse categoriesForClass!HTTP! !

!WABufferedResponse methodsFor!

binary	"put the response stream into binary mode. For buffered response, 	 replace the contentStream with a ByteArray based stream."	contentsStream := GRPlatform current readWriteByteStream!

contents	^ contentsStream contents!

destroy	super destroy.	contentsStream := nil!

initializeOn: aStream	super initializeOn: aStream.	contentsStream := aStream!

resetIfPossible	self initializeFields.	contentsStream reset.	^ true!

stream	^ contentsStream!

writeContentAsStringOn: aStream 	aStream nextPutAll: self contents asString!

writeContentOn: aStream 	aStream nextPutAll: self contents!

writeHeadersOn: aStream 	self 		headerAt: 'Content-Length'		put: contentsStream position.	super writeHeadersOn: aStream! !

!WABufferedResponse categoriesForMethods!
binary!public!streaming! !
contents!accessing!public! !
destroy!initialization!public! !
initializeOn:!initialization!public! !
resetIfPossible!convenience!public! !
stream!accessing!public! !
writeContentAsStringOn:!public!writing! !
writeContentOn:!public!writing! !
writeHeadersOn:!public!writing! !
!

!WABufferedResponse class methodsFor!

new	^ self on: (GRPlatform current writeCharacterStreamOn: (String new: 4096))!

on: aStream	^ self basicNew initializeOn: aStream! !

!WABufferedResponse class categoriesForMethods!
new!instance creation!public! !
on:!instance creation!public! !
!

