"Filed out from Dolphin Smalltalk"!

JSObjectTest subclass: #JSStreamTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSStreamTest guid: (GUID fromString: '{b54f91b1-5631-422e-ba94-47dfdb32f1c8}')!

JSStreamTest comment: ''!

!JSStreamTest categoriesForClass!Unclassified! !

!JSStreamTest methodsFor!

testArgument	| stream |	stream := self stream argument: 1.	self assert: stream contents = '(1)'!

testArguments	| stream |	stream := self stream arguments: #(1 2 3).	self assert: stream contents = '(1,2,3)'!

testCharacter	self assert: $a equals: '"a"'!

testCodecStream	| actual |	actual := String streamContents: [ :stream |		(GRNullCodec new encoderFor: stream)			javascript: 'OK' ].	self assert: actual = '"OK"'.		"The second part of this test is in response to https://github.com/GsDevKit/Grease/issues/33"	actual := (GRCodec forEncoding: 'utf8') encodedStringClass streamContents: [ :stream |		((GRCodec forEncoding: 'utf8') encoderFor: stream)			javascript: 'OK' ].	self assert: actual asString = '"OK"'!

testCopy	| stream1 stream2 |	stream1 := self stream nextPutAll: 'foo'.	stream2 := stream1 copy nextPutAll: 'bar'.	stream1 nextPutAll: 'zork'.	self assert: stream1 contents = 'foozork'.	self assert: stream2 contents = 'foobar'!

testEncodeKeyValueOn	| actual |	actual := String streamContents: [ :stream |		JSStream encodeKey: 'key' value: 'value' on: stream ].	self assert: actual = '"key":"value"'!

testHasStringSubStringAt	self assert: (JSStream hasString: 'Seaside' subString: 'Seaside' at: 1).	self assert: (JSStream hasString: 'Seaside' subString: 'easide' at: 2).	self deny: (JSStream hasString: 'Seaside' subString: 'Seaside' at: 2).	self deny: (JSStream hasString: 'Seaside' subString: 'waytoolongtofix' at: 1).!

testJavascript	| stream |	stream := self stream javascript: #(1 2).	self assert: stream contents = '[1,2]'!

testLiteral	self assert: true equals: 'true'.	self assert: false equals: 'false'.	self assert: nil equals: 'null'!

testNewArgument	self assert: (JSStream argument: 0) equals: 'arguments[0]'.	self assert: (JSStream argument: 1) equals: 'arguments[1]'.	self deny: (JSStream argument: 1) == (JSStream argument: 1)!

testNewArgumentAt	self assert: (JSStream argumentAt: 1) equals: 'arguments[0]'.	self assert: (JSStream argumentAt: 2) equals: 'arguments[1]'.	self deny: (JSStream argumentAt: 1) == (JSStream argument: 1)!

testNewOn	self assert: (JSStream on: 'mock') equals: 'mock'!

testNewThis	self assert: JSStream this equals: 'this'.	self deny: JSStream this == JSStream this!

testNextPut	| stream |	stream := self stream nextPut: $f.	self assert: stream contents = 'f'!

testNextPutAll	| stream |	stream := self stream nextPutAll: 'foo'.	self assert: stream contents = 'foo'!

testNumber	self assert: 123 equals: '123'.	self assert: 123.4 equals: '123.4'!

testStringBasic	self assert: 'abc' equals: '"abc"'.	self assert: '123' equals: '"123"'!

testStringEscaping	self assert: '''' equals: '"''"'.	self assert: '"' equals: '"\""'.	self assert: '\' equals: '"\\"'!

testStringSpecial	self assert: (String with: Character cr) equals: '"\r"'.	self assert: (String with: Character lf) equals: '"\n"'.	self assert: (String with: Character tab) equals: '"\t"'.	self assert: (String with: (Character codePoint: 0)) equals: '"\0"'.	self assert: (String with: (Character codePoint: 1)) equals: '"\x01"'.	self assert: (String with: (Character codePoint: 31)) equals: '"\x1f"'! !

!JSStreamTest categoriesForMethods!
testArgument!public!tests! !
testArguments!public!tests! !
testCharacter!public!tests/literals! !
testCodecStream!public!tests/literals! !
testCopy!public!tests! !
testEncodeKeyValueOn!public!tests/encoding! !
testHasStringSubStringAt!public!tests/encoding! !
testJavascript!public!tests! !
testLiteral!public!tests/literals! !
testNewArgument!public!tests/constructor! !
testNewArgumentAt!public!tests/constructor! !
testNewOn!public!tests/constructor! !
testNewThis!public!tests/constructor! !
testNextPut!public!tests! !
testNextPutAll!public!tests! !
testNumber!public!tests/literals! !
testStringBasic!public!tests/literals! !
testStringEscaping!public!tests/literals! !
testStringSpecial!public!tests/literals! !
!

