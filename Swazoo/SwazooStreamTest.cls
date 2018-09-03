"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #SwazooStreamTest
	instanceVariableNames: 'input output'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooStreamTest guid: (GUID fromString: '{2fa7750a-7e1a-4ad9-bc57-7b462accbe0e}')!
SwazooStreamTest comment: ''!
!SwazooStreamTest categoriesForClass!Unclassified! !
!SwazooStreamTest methodsFor!

crlfOn: aSwazooStream
	aSwazooStream
		nextPut: Character cr;
		nextPut: Character lf!

setUp
	| pair |
	pair := SwazooStream connectedPair.
	input := pair first.
	output := pair last!

tearDown
	input close.
	output close!

testConnectedPair
	(Array with: input with: output) 
		do: [:each | self assert: (each isKindOf: SwazooStream)]!

testErrorOnInputClose
	self should: 
			[input close.
			output next]
		raise: Error!

testLinesWithDoubleCRLF
	| ws rs comparisonString |
	comparisonString := 'abcd'.
	ws := SwazooStream on: String new.
	ws nextPutAll: comparisonString.
	self crlfOn: ws.
	self crlfOn: ws.
	rs := SwazooStream on: ws writeBuffer contents.
	self assert: rs nextLine = comparisonString.
	self assert: rs nextLine = ''!

testNextPut
	#($A $M $Y $b $r $z) do: 
			[:each | 
			self assert: (input nextPut: each) = each. 
			input flush.
			self assert: output next = each]!

testNextPutAll
	#('123' 'abc' 'swazoo') do: 
			[:each | 
			self assert: (input nextPutAll: each) = each. 
			input flush.
			self assert: (output next: each size) = each]!

testNextPutByte
	| bytes |
	bytes := ByteArray 
				with: 6
				with: 5
				with: 0
				with: 2.
	bytes do: 
			[:each | 
			self assert: (input nextPutByte: each) = each. 
			input flush.
			self assert: output nextByte = each]!

testNextPutBytes
	| bytes1 bytes2 bytes3 |
	bytes1 := ByteArray withAll: #(1 2 3 4).
	bytes2 := ByteArray withAll: #(5 4 3 2 1).
	bytes3 := ByteArray withAll: #(1 1 2 3 5).
	(Array 
		with: bytes1
		with: bytes2
		with: bytes3) do: 
				[:each | 
				self assert: (input nextPutBytes: each) = each.
				input flush.
				self assert: (output nextBytes: each size) = each]!

testPeek
	#($K $J $D $j $m $z) do: 
			[:each | 
			input nextPut: each.
			input flush.
			self assert: output peek = each.
			output next]!

testPeekByte
	| bytes |
	bytes := ByteArray withAll: #(5 2 8 4 11 231).
	bytes do: 
			[:each | 
			input nextPutByte: each.
			input flush.
			self assert: output peekByte = each.
			output nextByte]!

testSingleLineWithCR
	| ws rs comparisonString errored |
	comparisonString := 'abcd' , (String with: Character cr) , 'efg'.
	ws := SwazooStream on: String new.
	ws nextPutAll: comparisonString.
	ws nextPut: Character cr.
	rs := SwazooStream on: ws writeBuffer contents.
	errored := false.
	SpExceptionContext 
		for: [rs nextLine]
		on: SpError
		do: [:ex | errored := true].
	self assert: errored!

testSingleLineWithCRLF
	| ws rs comparisonString |
	comparisonString := 'abcd'.
	ws := SwazooStream on: String new.
	ws nextPutAll: comparisonString.
	self crlfOn: ws.
	rs := SwazooStream on: ws writeBuffer contents.
	self assert: rs nextLine = comparisonString! !
!SwazooStreamTest categoriesFor: #crlfOn:!public!running! !
!SwazooStreamTest categoriesFor: #setUp!public!running! !
!SwazooStreamTest categoriesFor: #tearDown!public!running! !
!SwazooStreamTest categoriesFor: #testConnectedPair!public!testing! !
!SwazooStreamTest categoriesFor: #testErrorOnInputClose!public!testing! !
!SwazooStreamTest categoriesFor: #testLinesWithDoubleCRLF!public!testing-lines! !
!SwazooStreamTest categoriesFor: #testNextPut!public!testing! !
!SwazooStreamTest categoriesFor: #testNextPutAll!public!testing! !
!SwazooStreamTest categoriesFor: #testNextPutByte!public!testing! !
!SwazooStreamTest categoriesFor: #testNextPutBytes!public!testing! !
!SwazooStreamTest categoriesFor: #testPeek!public!testing! !
!SwazooStreamTest categoriesFor: #testPeekByte!public!testing! !
!SwazooStreamTest categoriesFor: #testSingleLineWithCR!public!testing-lines! !
!SwazooStreamTest categoriesFor: #testSingleLineWithCRLF!public!testing-lines! !

