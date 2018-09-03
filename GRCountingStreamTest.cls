"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #GRCountingStreamTest
	instanceVariableNames: 'countingStream'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRCountingStreamTest guid: (GUID fromString: '{9ff53d40-55d2-47c9-ae4b-c94f0230f2b6}')!
GRCountingStreamTest comment: ''!
!GRCountingStreamTest categoriesForClass!Grease-Tests-Core! !
!GRCountingStreamTest methodsFor!

setUp	| codecStream |	codecStream := ((GRCodec forEncoding: 'utf-8') encoderFor: (WriteStream on: String new)).	countingStream := GRCountingStream on: codecStream!

testInitialSize	self assert: countingStream count = 0!

testNextPut	countingStream nextPut: (Character codePoint: 16rE4).	self assert: countingStream size = 2.	self assert: countingStream count = 1.	self assert: countingStream contents = (String with:  (Character codePoint: 16rC3) with:  (Character codePoint: 16rA4))!

testNextPutAll	countingStream nextPutAll: (String with: (Character codePoint: 16rE4)).	self assert: countingStream size = 2.	self assert: countingStream count = 1.	self assert: countingStream contents = (String with:  (Character codePoint: 16rC3) with:  (Character codePoint: 16rA4))!

testReset	countingStream nextPut: $a.	self assert: countingStream count = 1.	countingStream reset.	self assert: countingStream count = 0! !
!GRCountingStreamTest categoriesFor: #setUp!public!running! !
!GRCountingStreamTest categoriesFor: #testInitialSize!public!testing! !
!GRCountingStreamTest categoriesFor: #testNextPut!public!testing! !
!GRCountingStreamTest categoriesFor: #testNextPutAll!public!testing! !
!GRCountingStreamTest categoriesFor: #testReset!public!testing! !

