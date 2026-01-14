"Filed out from Dolphin Smalltalk"!

JSObjectTest subclass: #JSStreamTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSStreamTest guid: (GUID fromString: '{998c15b2-a2e3-4d35-94e8-245f30d62bdd}')!

JSStreamTest comment: ''!

!JSStreamTest categoriesForClass!Javascript-Tests-Core! !

!JSStreamTest methodsFor!

generateBestCaseString: size	"Generate a String containing only asciii a-z"	| generator |	generator := GRPlatform current newRandom.	^ String streamContents: [:str | 			1 to: size do:[:i |str nextPut: (Character value: 96 + (generator nextInt: 29)) ] ]!

generateWorstCaseString: size	| generator |	generator := GRPlatform current newRandom.	^ String streamContents: [:str | 				1 to: size do: [:i | str nextPut: (Character value: (generator nextInt: 128)) ] ].!

testArgument	| stream |	stream := self stream argument: 1.	self assert: stream contents = '(1)'!

testArguments	| stream |	stream := self stream arguments: #(1 2 3).	self assert: stream contents = '(1,2,3)'!

testCharacter	self assert: $a equals: '"a"'!

testCodecStream	| actual |	actual := String streamContents: [ :stream |		(GRNullCodec new encoderFor: stream)			javascript: 'OK' ].	self assert: actual = '"OK"'.		"The second part of this test is in response to https://github.com/GsDevKit/Grease/issues/33"	actual := (GRCodec forEncoding: 'utf8') encodedStringClass streamContents: [ :stream |		((GRCodec forEncoding: 'utf8') encoderFor: stream)			javascript: 'OK' ].	self assert: actual asString = '"OK"'!

testCopy	| stream1 stream2 |	stream1 := self stream nextPutAll: 'foo'.	stream2 := stream1 copy nextPutAll: 'bar'.	stream1 nextPutAll: 'zork'.	self assert: stream1 contents = 'foozork'.	self assert: stream2 contents = 'foobar'!

testJavascript	| stream |	stream := self stream javascript: #(1 2).	self assert: stream contents = '[1,2]'!

testJavascriptRenderingPerformance	 	| iterations size worstcasestring bestcasestring stringToStream |	iterations := 1000.	size := 5000.	bestcasestring := self generateBestCaseString: size.	worstcasestring := self generateWorstCaseString: size.		Transcript show: 'Best case:';cr.	stringToStream := self timeJavascriptRenderingOf: bestcasestring times: iterations.	Transcript show: ('- Rendering {1} Strings with {2} chars in response: {3} ms' format: { iterations asString . size asString . stringToStream asString}); cr.		Transcript show: 'Worst case:';cr.	stringToStream := self timeJavascriptRenderingOf: worstcasestring times: iterations.	Transcript show: ('- Rendering {1} Strings with {2} chars in response: {3} ms' format: { iterations asString . size asString . stringToStream asString}); cr.!

testJson			| testString |			testString := String with: (Character codePoint: 16r2028).			self assert: (self stream javascript: testString; contents) = '"\u2028"'.		self assert: (self stream json: testString; contents) = ('"' , testString , '"').!

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

testStringSpecial	self assert: (String with: Character cr) equals: '"\r"'.	self assert: (String with: Character lf) equals: '"\n"'.	self assert: (String with: Character tab) equals: '"\t"'.	self assert: (String with: (Character codePoint: 0)) equals: '"\0"'.	self assert: (String with: (Character codePoint: 1)) equals: '"\x01"'.	self assert: (String with: (Character codePoint: 31)) equals: '"\x1f"'!

timeJavascriptRenderingOf: aString times: aNumber	^ Time millisecondsToRun: [ 		WACurrentRequestContext 			use: (WARequestContext request: WARequest new response: WABufferedResponse new codec: GRNullCodec new)			during: [			WACurrentRequestContext value				push: WARequestHandler new				during: [					(GRCodec forEncoding: 'utf-8') encodedStringClass streamContents: [:str |						WAHtmlCanvas builder							render: [:html | html script: ((html jQuery id: #id) replaceWith: [:h | aNumber timesRepeat: [ h div: aString ] ]) ]							on: ((GRCodec forEncoding: 'utf-8') encoderFor: str) ] ] ] ]! !

!JSStreamTest categoriesForMethods!
generateBestCaseString:!public!tests/performance! !
generateWorstCaseString:!public!tests/performance! !
testArgument!public!tests! !
testArguments!public!tests! !
testCharacter!public!tests/literals! !
testCodecStream!public!tests/literals! !
testCopy!public!tests! !
testJavascript!public!tests! !
testJavascriptRenderingPerformance!public!tests/performance! !
testJson!public!tests! !
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
timeJavascriptRenderingOf:times:!public!tests/performance! !
!

