"Filed out from Dolphin Smalltalk"!

WAResponse subclass: #WAStreamedResponse
	instanceVariableNames: 'committed externalStream'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAStreamedResponse guid: (GUID fromString: '{bc15c870-f7dc-45e9-bb39-1e5cd272ed8e}')!

WAStreamedResponse comment: 'A WAStreamedResponse is a HTTP response that directly writes to an external write stream. This response class is used to implement efficient HTTP response streaming, as it can directly write do the socket while content is still generated.Instance Variables	committed:		<Boolean>	Whether the status and header was written to the stream.	externalStream:		<WriteStream>	The external stream to write to.'!

!WAStreamedResponse categoriesForClass!HTTP! !

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

writeContentAsStringOn: aStream	committed := true!

writeContentOn: aStream 	committed := true! !

!WAStreamedResponse categoriesForMethods!
addCookie:!accessing/cookies!public! !
binary!public!streaming! !
committedCheck!private! !
destroy!initialization!public! !
flush!public! !
headerAt:append:!accessing/headers!public! !
headerAt:put:!accessing/headers!public! !
initializeOn:!initialization!public! !
isCommitted!public!testing! !
isStreamingResponse!public!testing! !
removeHeaderAt:!accessing/headers!public! !
resetIfPossible!convenience!public! !
status:message:!accessing/status!public! !
stream!accessing!public! !
writeContentAsStringOn:!public!writing! !
writeContentOn:!public!writing! !
!

!WAStreamedResponse class methodsFor!

on: aStream	^ self basicNew initializeOn: aStream! !

!WAStreamedResponse class categoriesForMethods!
on:!instance creation!public! !
!

