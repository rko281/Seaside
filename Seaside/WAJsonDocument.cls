"Filed out from Dolphin Smalltalk"!

WADocument subclass: #WAJsonDocument
	instanceVariableNames: 'jsonEncoder'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAJsonDocument guid: (GUID fromString: '{ad5d9724-23cc-4d1f-b80e-e8010d33d175}')!

WAJsonDocument comment: 'I add the possibility to generate JSON.'!

!WAJsonDocument categoriesForClass!Seaside-JSON-Core-Base! !

!WAJsonDocument methodsFor!

closeArray	stream nextPut: $]!

closeObject	stream nextPut: $}!

initializeWithStream: aStream codec: aCodec	super initializeWithStream: aStream codec: aCodec.	jsonEncoder := GRPlatform current jsonEncoderOn: aStream!

openArray	stream nextPut: $[!

openObject	stream nextPut: ${!

string: aString	stream nextPut: $".	jsonEncoder nextPutAll: aString.	stream nextPut: $"! !

!WAJsonDocument categoriesForMethods!
closeArray!public!writing! !
closeObject!public!writing! !
initializeWithStream:codec:!initialization!public! !
openArray!public!writing! !
openObject!public!writing! !
string:!public!writing! !
!

