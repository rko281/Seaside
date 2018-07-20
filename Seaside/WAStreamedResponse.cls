"Filed out from Dolphin Smalltalk 7"!

WAResponse subclass: #WAStreamedResponse
	instanceVariableNames: 'committed externalStream'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAStreamedResponse guid: (GUID fromString: '{d8bb53ef-4bae-4d5a-aec6-dd2493b7f2ce}')!
WAStreamedResponse comment: 'A WAStreamedResponse is a HTTP response that directly writes to an external write stream. This response class is used to implement efficient HTTP response streaming, as it can directly write do the socket while content is still generated.Instance Variables	committed:		<Boolean>	Whether the status and header was written to the stream.	externalStream:		<WriteStream>	The external stream to write to.'!
!WAStreamedResponse categoriesForClass!Seaside-Core-HTTP! !
!WAStreamedResponse methodsFor!

addCookie: aCookie	self committedCheck.	^ super addCookie: aCookie!

binary	"put the response stream into binary mode"	externalStream binary!

committedCheck	"Raises a signal if this response is already committed."	self isCommitted 		ifTrue: [ WAIllegalStateException signal ]!

destroy	super destroy.	externalStream := nil!

flush	"Flush the status code and header fields, if they haven't been written yet."	self isCommitted		ifFalse: [ self writeOn: externalStream ].	externalStream flush!

headerAt: aString append: aValue	self committedCheck.	^ super headerAt: aString append: aValue!

headerAt: aString put: aValue	self committedCheck.	^ super headerAt: aString put: aValue!

initializeOn: aStream 	super initializeOn: aStream.	committed := false.	externalStream := aStream!

isCommitted	^ committed!

isStreamingResponse	"Return true if the receiver supports partial stream responses."	^ true!

removeHeaderAt: aString	self committedCheck.	^ super removeHeaderAt: aString!

resetIfPossible	^ self isCommitted not and: [		"Reset only if not committed.		Stream does not have to be reset because it isn't committed yet.		(it couldn't be reset anyway because it's a SocketStream)"		super resetIfPossible  ]!

status: aNumber message: aString	self committedCheck.	super status: aNumber message: aString!

stream	self flush.	^ externalStream!

writeContentOn: aStream 	committed := true! !
!WAStreamedResponse categoriesFor: #addCookie:!accessing/cookies!public! !
!WAStreamedResponse categoriesFor: #binary!public!streaming! !
!WAStreamedResponse categoriesFor: #committedCheck!private! !
!WAStreamedResponse categoriesFor: #destroy!initialization!public! !
!WAStreamedResponse categoriesFor: #flush!public! !
!WAStreamedResponse categoriesFor: #headerAt:append:!accessing/headers!public! !
!WAStreamedResponse categoriesFor: #headerAt:put:!accessing/headers!public! !
!WAStreamedResponse categoriesFor: #initializeOn:!initialization!public! !
!WAStreamedResponse categoriesFor: #isCommitted!public!testing! !
!WAStreamedResponse categoriesFor: #isStreamingResponse!public!testing! !
!WAStreamedResponse categoriesFor: #removeHeaderAt:!accessing/headers!public! !
!WAStreamedResponse categoriesFor: #resetIfPossible!convenience!public! !
!WAStreamedResponse categoriesFor: #status:message:!accessing/status!public! !
!WAStreamedResponse categoriesFor: #stream!accessing!public! !
!WAStreamedResponse categoriesFor: #writeContentOn:!public!writing! !

!WAStreamedResponse class methodsFor!

on: aStream	^ self basicNew initializeOn: aStream! !
!WAStreamedResponse class categoriesFor: #on:!instance creation!public! !

