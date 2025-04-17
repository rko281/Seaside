"Filed out from Dolphin Smalltalk"!

WADocument subclass: #WAJsonDocument
	instanceVariableNames: 'jsonEncoder'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAJsonDocument guid: (GUID fromString: '{ef13cb30-e4ee-4764-82d7-283d8e220127}')!

WAJsonDocument comment: 'I add the possibility to generate JSON.'!

!WAJsonDocument categoriesForClass!Base! !

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

