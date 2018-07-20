"Filed out from Dolphin Smalltalk 7"!

JSObjectTest subclass: #JSStreamTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSStreamTest guid: (GUID fromString: '{7a4e4efd-c9c7-48fd-839e-23ca4410b0a2}')!
JSStreamTest comment: ''!
!JSStreamTest categoriesForClass!Javascript-Tests-Core! !
!JSStreamTest methodsFor!

testArgument	| stream |	stream := self stream argument: 1.	self assert: stream contents = '(1)'!

testArguments	| stream |	stream := self stream arguments: #(1 2 3).	self assert: stream contents = '(1,2,3)'!

testCharacter	self assert: $a equals: '"a"'!

testCopy	| stream1 stream2 |	stream1 := self stream nextPutAll: 'foo'.	stream2 := stream1 copy nextPutAll: 'bar'.	stream1 nextPutAll: 'zork'.	self assert: stream1 contents = 'foozork'.	self assert: stream2 contents = 'foobar'!

testEncodeKeyValueOn	| actual |	actual := String streamContents: [ :stream |		JSStream encodeKey: 'key' value: 'value' on: stream ].	self assert: actual = '"key":"value"'!

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
!JSStreamTest categoriesFor: #testArgument!public!tests! !
!JSStreamTest categoriesFor: #testArguments!public!tests! !
!JSStreamTest categoriesFor: #testCharacter!public!tests/literals! !
!JSStreamTest categoriesFor: #testCopy!public!tests! !
!JSStreamTest categoriesFor: #testEncodeKeyValueOn!public!tests/encoding! !
!JSStreamTest categoriesFor: #testJavascript!public!tests! !
!JSStreamTest categoriesFor: #testLiteral!public!tests/literals! !
!JSStreamTest categoriesFor: #testNewArgument!public!tests/constructor! !
!JSStreamTest categoriesFor: #testNewArgumentAt!public!tests/constructor! !
!JSStreamTest categoriesFor: #testNewOn!public!tests/constructor! !
!JSStreamTest categoriesFor: #testNewThis!public!tests/constructor! !
!JSStreamTest categoriesFor: #testNextPut!public!tests! !
!JSStreamTest categoriesFor: #testNextPutAll!public!tests! !
!JSStreamTest categoriesFor: #testNumber!public!tests/literals! !
!JSStreamTest categoriesFor: #testStringBasic!public!tests/literals! !
!JSStreamTest categoriesFor: #testStringEscaping!public!tests/literals! !
!JSStreamTest categoriesFor: #testStringSpecial!public!tests/literals! !

