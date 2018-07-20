"Filed out from Dolphin Smalltalk 7"!

WAResponse subclass: #WABufferedResponse
	instanceVariableNames: 'contentsStream'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABufferedResponse guid: (GUID fromString: '{a791db0f-7d10-467a-a0ba-056da77109be}')!
WABufferedResponse comment: 'A WABufferedResponse is a concrete implementation of a HTTP response. Its contentsStream is used to represent the body of the message.Instance Variables	contentsStream:		<WriteStream> The contents of this message.'!
!WABufferedResponse categoriesForClass!Seaside-Core-HTTP! !
!WABufferedResponse methodsFor!

binary	"put the response stream into binary mode. For buffered response, 	 replace the contentStream with a ByteArray based stream."	contentsStream := GRPlatform current readWriteByteStream!

contents	^ contentsStream contents!

destroy	super destroy.	contentsStream := nil!

initializeOn: aStream	super initializeOn: aStream.	contentsStream := aStream!

resetIfPossible	self initializeFields.	contentsStream reset.	^ true!

stream	^ contentsStream!

writeContentOn: aStream 	aStream nextPutAll: self contents!

writeHeadersOn: aStream 	self 		headerAt: 'Content-Length'		put: contentsStream position.	super writeHeadersOn: aStream! !
!WABufferedResponse categoriesFor: #binary!public!streaming! !
!WABufferedResponse categoriesFor: #contents!accessing!public! !
!WABufferedResponse categoriesFor: #destroy!initialization!public! !
!WABufferedResponse categoriesFor: #initializeOn:!initialization!public! !
!WABufferedResponse categoriesFor: #resetIfPossible!convenience!public! !
!WABufferedResponse categoriesFor: #stream!accessing!public! !
!WABufferedResponse categoriesFor: #writeContentOn:!public!writing! !
!WABufferedResponse categoriesFor: #writeHeadersOn:!public!writing! !

!WABufferedResponse class methodsFor!

new	^ self on: (GRPlatform current writeCharacterStreamOn: (String new: 4096))!

on: aStream	^ self basicNew initializeOn: aStream! !
!WABufferedResponse class categoriesFor: #new!instance creation!public! !
!WABufferedResponse class categoriesFor: #on:!instance creation!public! !

