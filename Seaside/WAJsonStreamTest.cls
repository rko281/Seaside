"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAJsonStreamTest
	instanceVariableNames: 'printer'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAJsonStreamTest guid: (GUID fromString: '{51a00070-b0db-4ce9-8778-fb196f336d31}')!

WAJsonStreamTest comment: ''!

!WAJsonStreamTest categoriesForClass!Seaside-Tests-JSON! !

!WAJsonStreamTest methodsFor!

assert: anObject gives: aString	self		assert: anObject asJson = aString		description: anObject asJson , ' expected to be ' , aString greaseString		resumable: true!

assert: anObject givesIgnoreCase: aString	self		assert: anObject asJson asLowercase = aString asLowercase		description: anObject asJson , ' expected to be ' , aString greaseString		resumable: true!

jsonOn: aRenderer	printer value: aRenderer!

testArray	self assert: #(1 2 3) gives: '[1, 2, 3]'!

testCharacter	self assert: $a gives: '"a"'!

testCustomArray	printer := [ :renderer | renderer render: #('aString1' ('aString2' 'aString3')) ].	self assert: self gives: '["aString1", ["aString2", "aString3"]]'!

testCustomCollection	printer := [ :renderer | renderer render: (GRSmallOrderedSet withAll: #('aString2' 'aString3')) ].	self assert: self gives: '["aString2", "aString3"]'!

testCustomDictionary	printer := [ :renderer | 		renderer render: (GRSmallDictionary2 new			at: 'foo' put: 'bar';			at: 'zork' put: (GRSmallDictionary2 new				at: 'foo' put: 'bar';				yourself);			yourself) ].	self assert: self gives: '{"foo": "bar", "zork": {"foo": "bar"}}'!

testDictionary	self		assert:			((GRSmallDictionary2 new)				at: 'foo' put: 1;				at: 'bar' put: 2;				at: 'zork' put: 3;				yourself)		gives: '{"foo": 1, "bar": 2, "zork": 3}'.	self		assert:			((GRSmallDictionary2 new)				at: '' put: 'empty';				yourself)		gives: '{"": "empty"}'.	self		assert:			((Dictionary new)				at: '1abc' put: 'not-an-id';				yourself)		gives: '{"1abc": "not-an-id"}'.	self		assert:			((Dictionary new)				at: 'abc1' put: 'totally sexy';				yourself)		gives: '{"abc1": "totally sexy"}'!

testDictionaryWithNonStringKeys		self		should: [			(Dictionary new				 at: #( 1 2 ) put: 'awkward';				 yourself) asJson ]		raise: WAJsonSyntaxError.			self		should: [			((Dictionary new)				at: 1 put: 'not-a-string';				yourself) asJson ]		raise: WAJsonSyntaxError!

testLiteral	self assert: true gives: 'true'.	self assert: false gives: 'false'.	self assert: nil gives: 'null'!

testNumber	self assert: 123 gives: '123'.	self assert: 123.4 gives: '123.4'!

testObject	self		should: [ Object new asJson ]		raise: Error!

testStringBasic	self assert: 'abc' gives: '"abc"'.	self assert: '123' gives: '"123"'!

testStringEscaping	self assert: '''' gives: '"''"'.	self assert: '"' gives: '"\""'.	self assert: '\' gives: '"\\"'!

testStringMultiByte	"regression test for	Issue 217: MultibyteString JavascriptOn infinite recursion [GemStone]	http://code.google.com/p/glassdb/issues/detail?id=217"	| multibyteString |	multibyteString := String with: (Character codePoint: 8364).	self assert: multibyteString gives: '"', multibyteString, '"'!

testStringSpecial	self assert: (String with: Character cr) gives: '"\r"'.	self assert: (String with: Character lf) gives: '"\n"'.	self assert: (String with: Character tab) gives: '"\t"'.	self assert: (String with: (Character codePoint: 8)) gives: '"\b"'.	self assert: (String with: (Character codePoint: 12)) gives: '"\f"'.	"http://tools.ietf.org/html/rfc4627#section-2.5"	0 to: 16r001F do: [ :codePoint |		(#(8 "backspace" 9 "tab" 10 "lf" 12 "form feed" 13 "cr") includes: codePoint) ifFalse: [			self				assert: (String with: (Character codePoint: codePoint))				"case doesn't matter"				givesIgnoreCase: '"\u', (codePoint printPaddedWith: $0 to: 4 base: 16), '"'  ] ] "Dolphin modified"! !

!WAJsonStreamTest categoriesForMethods!
assert:gives:!asserting!public! !
assert:givesIgnoreCase:!asserting!public! !
jsonOn:!printing!public! !
testArray!public!tests! !
testCharacter!public!tests/literals! !
testCustomArray!public!tests/custom! !
testCustomCollection!public!tests/custom! !
testCustomDictionary!public!tests/custom! !
testDictionary!public!tests! !
testDictionaryWithNonStringKeys!public!tests! !
testLiteral!public!tests/literals! !
testNumber!public!tests/literals! !
testObject!public!tests! !
testStringBasic!public!tests/literals! !
testStringEscaping!public!tests/literals! !
testStringMultiByte!public!tests/literals! !
testStringSpecial!dolphin seaside patches!public!tests/literals! !
!

