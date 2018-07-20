"Filed out from Dolphin Smalltalk 7"!

WADocument subclass: #WAJsonDocument
	instanceVariableNames: 'jsonEncoder'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAJsonDocument guid: (GUID fromString: '{e545fec3-12be-484e-9f98-7ab16e90e9ef}')!
WAJsonDocument comment: ''!
!WAJsonDocument categoriesForClass!Seaside-JSON-Core! !
!WAJsonDocument methodsFor!

closeArray	stream nextPut: $]!

closeObject	stream nextPut: $}!

initializeWithStream: aStream codec: aCodec	super initializeWithStream: aStream codec: aCodec.	jsonEncoder := GRPlatform current jsonEncoderOn: aStream!

openArray	stream nextPut: $[!

openObject	stream nextPut: ${!

string: aString	stream nextPut: $".	jsonEncoder nextPutAll: aString.	stream nextPut: $"! !
!WAJsonDocument categoriesFor: #closeArray!public!writing! !
!WAJsonDocument categoriesFor: #closeObject!public!writing! !
!WAJsonDocument categoriesFor: #initializeWithStream:codec:!initialization!public! !
!WAJsonDocument categoriesFor: #openArray!public!writing! !
!WAJsonDocument categoriesFor: #openObject!public!writing! !
!WAJsonDocument categoriesFor: #string:!public!writing! !

