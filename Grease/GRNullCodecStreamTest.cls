"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #GRNullCodecStreamTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRNullCodecStreamTest guid: (GUID fromString: '{1ed62b18-24d1-4335-9084-245257910302}')!
GRNullCodecStreamTest comment: ''!
!GRNullCodecStreamTest categoriesForClass!Grease-Tests-Core! !
!GRNullCodecStreamTest methodsFor!

codecStreamClass	^ GRNullCodecStream!

seasideByteArray	^ #(83 101 97 115 105 100 101) "Seaside" asByteArray!

testCrlf	| stream |	stream := GRNullCodec new 		encoderFor: (WriteStream on: String new).	stream crlf.		self assert: stream contents size = 2.	self assert: stream contents first = Character cr.	self assert: stream contents last = Character lf!

testFlush	| stream |	stream := GRNullCodec new 		encoderFor: (WriteStream on: String new).	stream nextPutAll: 'abc'.	self shouldnt: [ stream flush ] raise: Error.	self assert: stream contents = 'abc'!

testName	| codec |	codec := GRNullCodec new.		self assert: codec name = GRNullCodec codecName!

testNext	| stream |	stream := GRNullCodec new		encoderFor: 'Seaside' readStream.	self assert: stream next = $S.	self assert: (stream next: 1) = 'e'!

testPrint	| stream |	stream := GRNullCodec new 		encoderFor: (WriteStream on: String new).	stream print: 123.	self assert: stream contents = '123'!

testReadString	| stream codecStream |	stream := 'abc' readStream.	codecStream := GRNullCodec new decoderFor: stream.	self assert: codecStream next = $a.	self assert: (codecStream next: 2) = 'bc'!

testSize	| stream |	stream := GRNullCodec new 		encoderFor: (WriteStream on: String new).	stream nextPutAll: 'abc'.	self assert: stream size = 3.	stream nextPut: $d.	self assert: stream size = 4!

testSpace	| stream |	stream := GRNullCodec new 		encoderFor: (WriteStream on: String new).	stream space.		self assert: stream contents size = 1.	self assert: stream contents first = Character space!

testTab	| stream |	stream := GRNullCodec new 		encoderFor: (WriteStream on: String new).	stream tab.		self assert: stream contents size = 1.	self assert: stream contents first = Character tab!

testWriteString	| stream codecStream |	stream := WriteStream on: String new.	codecStream := GRNullCodec new encoderFor: stream.	codecStream		nextPut: $A;		nextPutAll: 'BC';		nextPut: 68;		nextPutAll: #(69 70 ) asByteArray.	self assert: codecStream contents = 'ABCDEF'! !
!GRNullCodecStreamTest categoriesFor: #codecStreamClass!accessing!public! !
!GRNullCodecStreamTest categoriesFor: #seasideByteArray!private! !
!GRNullCodecStreamTest categoriesFor: #testCrlf!public!tests/characters! !
!GRNullCodecStreamTest categoriesFor: #testFlush!public!tests/protocol! !
!GRNullCodecStreamTest categoriesFor: #testName!public!tests/characters! !
!GRNullCodecStreamTest categoriesFor: #testNext!public!tests/protocol! !
!GRNullCodecStreamTest categoriesFor: #testPrint!public!tests/protocol! !
!GRNullCodecStreamTest categoriesFor: #testReadString!public!tests! !
!GRNullCodecStreamTest categoriesFor: #testSize!public!tests/protocol! !
!GRNullCodecStreamTest categoriesFor: #testSpace!public!tests/characters! !
!GRNullCodecStreamTest categoriesFor: #testTab!public!tests/characters! !
!GRNullCodecStreamTest categoriesFor: #testWriteString!public!tests! !

