"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAJsonParserTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAJsonParserTest guid: (GUID fromString: '{a5b7bfff-b901-41f7-815f-a06e493f1c2d}')!

WAJsonParserTest comment: ''!

!WAJsonParserTest categoriesForClass!Seaside-Tests-JSON! !

!WAJsonParserTest methodsFor!

assertInvalid: aString	self should: [ self parse: aString ] raise: WAJsonSyntaxError!

parse: aString	^ GRPlatform current jsonParserClass parse: aString!

supportsEmoji	^ [ String			with: (Character codePoint: 16r1F1F3) "Regional Indicator Symbol Letter N"			with: (Character codePoint: 16r1F1F1). "Regional Indicator Symbol Letter L"		true ]		on: Error		do: [ :error | false ]!

testBigArray	| result |	result := self parse: ' [ "a" , "b" ] '.	self assert: result isArray.	self assert: result size equals: 2.	self assert: result first equals: 'a'.	self assert: result second equals: 'b'!

testBigObject	| result |	result := self parse: ' { "a" : 1 , "b" : 2 } '.	self assert: result isDictionary.	self assert: result size equals: 2.	self assert: (result at: 'a') equals: 1.	self assert: (result at: 'b') equals: 2!

testEmptyArray	| result |	result := self parse: '[]'.	self assert: result isArray.	self assert: result isEmpty!

testEmptyObject	| result |	result := self parse: '{}'.	self assert: result isDictionary.	self assert: result isEmpty!

testExplorerEvent	| result |	result := self parse: '{"recordset": null, "type": "change", "fromElement": null, "toElement": null, "altLeft": false, "keyCode": 0, "repeat": false, "reason": 0, "behaviorCookie": 0, "contentOverflow": false, "behaviorPart": 0, "dataTransfer": null, "ctrlKey": false, "shiftLeft": false, "dataFld": "", "qualifier": "", "wheelDelta": 0, "bookmarks": null, "button": 0, "srcFilter": null, "nextPage": "", "cancelBubble": false, "x": 89, "y": 502, "screenX": 231, "screenY": 1694, "srcUrn": "", "boundElements": {"length": 0}, "clientX": 89, "clientY": 502, "propertyName": "", "shiftKey": false, "ctrlLeft": false, "offsetX": 25, "offsetY": 2, "altKey": false}'.	self assert: (result at: 'type') equals: 'change'.	self assert: (result at: 'offsetY') equals: 2.	self deny: (result at: 'altKey').	self assert: (result at: 'dataTransfer') isNil.	self assert: (result at: 'nextPage') equals: ''!

testFalse	self deny: (self parse: 'false')!

testFirefoxEvent	| result |	result := self parse: '{"type": "change", "eventPhase": 2, "bubbles": true, "cancelable": true, "timeStamp": 0, "CAPTURING_PHASE": 1, "AT_TARGET": 2, "BUBBLING_PHASE": 3, "isTrusted": true, "MOUSEDOWN": 1, "MOUSEUP": 2, "MOUSEOVER": 4, "MOUSEOUT": 8, "MOUSEMOVE": 16, "MOUSEDRAG": 32, "CLICK": 64, "DBLCLICK": 128, "KEYDOWN": 256, "KEYUP": 512, "KEYPRESS": 1024, "DRAGDROP": 2048, "FOCUS": 4096, "BLUR": 8192, "SELECT": 16384, "CHANGE": 32768, "RESET": 65536, "SUBMIT": 131072, "SCROLL": 262144, "LOAD": 524288, "UNLOAD": 1048576, "XFER_DONE": 2097152, "ABORT": 4194304, "ERROR": 8388608, "LOCATE": 16777216, "MOVE": 33554432, "RESIZE": 67108864, "FORWARD": 134217728, "HELP": 268435456, "BACK": 536870912, "TEXT": 1073741824, "ALT_MASK": 1, "CONTROL_MASK": 2, "SHIFT_MASK": 4, "META_MASK": 8}'.	self assert: (result at: 'type') equals: 'change'.	self assert: (result at: 'eventPhase') equals: 2.	self assert: (result at: 'bubbles').	self assert: (result at: 'cancelable').	self assert: (result at: 'BACK') equals: 536870912!

testInvalidArray	self assertInvalid: '['.	self assertInvalid: '[1'.	self assertInvalid: '[1,'.	self assertInvalid: '[1,]'.	self assertInvalid: '[1 2]'.	self assertInvalid: '[]]'!

testInvalidFalse	self assertInvalid: 'fa'.	self assertInvalid: 'falsely'.	self assertInvalid: 'fabulous'!

testInvalidNull	self assertInvalid: 'nu'.	self assertInvalid: 'nuclear'.	self assertInvalid: 'nullified'!

testInvalidObject	self assertInvalid: '{'.	self assertInvalid: '{"a"'.	self assertInvalid: '{"a":'.	self assertInvalid: '{"a":"b"'.	self assertInvalid: '{"a":"b",'.	self assertInvalid: '{"a"}'.	self assertInvalid: '{"a":}'.	self assertInvalid: '{"a":"b",}'.	self assertInvalid: '{}}'.	self assertInvalid: '{1:"a"}'!

testInvalidString	self assertInvalid: '"'.	self assertInvalid: '"a'.	self assertInvalid: '"\"'.	self assertInvalid: '"\a"'.	self assertInvalid: '"\u"'.	self assertInvalid: '"\u1"'.	self assertInvalid: '"\u12"'.	self assertInvalid: '"\u123"'.	self assertInvalid: '"\u123x"'!

testInvalidTrue	self assertInvalid: 'tr'.	self assertInvalid: 'trace'.	self assertInvalid: 'truest'!

testNestedArray	| result |	result := self parse: '[[2]]'.	self assert: result isArray.	self assert: result size equals: 1.	result := result first.	self assert: result isArray.	self assert: result size equals: 1.	self assert: result first equals: 2!

testNestedObject	| result |	result := self parse: '{"object":{"1":"2"}} '.	self assert: result isDictionary.	self assert: result size equals: 1.	result := result at: 'object'.	self assert: result isDictionary.	self assert: result size equals: 1.	self assert: (result at: '1') equals: '2'!

testNonBmpCodePoints	| parsed stream |	self supportsEmoji ifFalse: [		^ self ].		"dutch flag as two surrogate pairs"	parsed := self parse: '"\uD83C\uDDF3\uD83C\uDDF1"'.
	"Dolphin modified (UTF8)"	self assert: parsed characterCount equals: 2.
	stream := parsed readStream.	self assert: stream next codePoint equals: 16r1F1F3. "Regional Indicator Symbol Letter N"	self assert: stream next codePoint equals: 16r1F1F1 "Regional Indicator Symbol Letter L"!

testNull	self assert: (self parse: 'null') isNil!

testNumberFloat	self assert: (self parse: '0.0') equals: 0.0.	self assert: (self parse: '0.12') equals: 0.12.	self assert: (self parse: '-0.12') equals: -0.12.	self assert: (self parse: '12.34') equals: 12.34.	self assert: (self parse: '-12.34') equals: -12.34.	self assert: (self parse: '1.2e0') equals: 1.2.	self assert: (self parse: '1.2e+1') equals: 12.0.	self assert: (self parse: '1.2e-1') equals: 1.2e-1!

testNumberInteger	self assert: (self parse: '0') equals: 0.	self assert: (self parse: '1') equals: 1.	self assert: (self parse: '-1') equals: -1.	self assert: (self parse: '12') equals: 12.	self assert: (self parse: '-12') equals: -12.	self assert: (self parse: '1e2') equals: 100.	self assert: (self parse: '1e+2') equals: 100!

testSafariEvent	| result |	result := self parse: '{"returnValue": true, "timeStamp": 1226697417289, "eventPhase": 2, "type": "change", "cancelable": false, "bubbles": true, "cancelBubble": false, "MOUSEOUT": 8, "FOCUS": 4096, "CHANGE": 32768, "MOUSEMOVE": 16, "AT_TARGET": 2, "SELECT": 16384, "BLUR": 8192, "KEYUP": 512, "MOUSEDOWN": 1, "MOUSEDRAG": 32, "BUBBLING_PHASE": 3, "MOUSEUP": 2, "CAPTURING_PHASE": 1, "MOUSEOVER": 4, "CLICK": 64, "DBLCLICK": 128, "KEYDOWN": 256, "KEYPRESS": 1024, "DRAGDROP": 2048}'.	self assert: (result at: 'type') equals: 'change'.	self assert: (result at: 'eventPhase') equals: 2.	self assert: (result at: 'bubbles').	self deny: (result at: 'cancelBubble').	self deny: (result at: 'cancelable').	self assert: (result at: 'BLUR') equals: 8192!

testSmallArray	| result |	result := self parse: '["a"]'.	self assert: result isArray.	self assert: result size equals: 1.	self assert: result first equals: 'a'!

testSmallObject	| result |	result := self parse: '{"a":1}'.	self assert: result isDictionary.	self assert: result size equals: 1.	self assert: (result at: 'a') equals: 1!

testString	self assert: (self parse: '""') equals: ''.	self assert: (self parse: '"foo"') equals: 'foo'.	self assert: (self parse: '"foo bar"') equals: 'foo bar'.	self assert: (self parse: '" foo "') equals: ' foo '!

testStringEscaped	self assert: (self parse: '"\""') equals: '"'.	self assert: (self parse: '"\\"') equals: '\'.	self assert: (self parse: '"\/"') equals: '/'.	self assert: (self parse: '"\b"') equals: (String with: Character backspace).	self assert: (self parse: '"\f"') equals: (String with: Character newPage).	self assert: (self parse: '"\n"') equals: (String with: Character lf).	self assert: (self parse: '"\r"') equals: (String with: Character cr).	self assert: (self parse: '"\t"') equals: (String with: Character tab).	self assert: (self parse: '"\u20Ac"') equals: (String with: (Character codePoint: 16r20AC))!

testSurrogatePairs	"Tests the handling of \uXXXX\uXXXX sequences that form surrogate pairs	(see: https://www.rfc-editor.org/rfc/rfc8259#section-7)."	self assert: (GRPlatform current jsonParserClass parse: '"\uD800\uDC00"') equals: (String with: (Character codePoint: 16r10000)).	self assert: (GRPlatform current jsonParserClass parse: '"\uD834\uDD1E"') equals: (String with: (Character codePoint: 16r1D11E)).	"self assert: (GRPlatform current jsonParserClass parse: '\uDBFF\uDFFF') equals: (String with: (Character codePoint: 16r10FFFF)). <- Dolphin modified: Dolphin regards this as an invalid code point"	self assert: (GRPlatform current jsonParserClass parse: '"\uD7FF\uD800\uDC00\uE000"') equals:		(String with: (Character codePoint: 16rD7FF) with: (Character codePoint: 16r10000) with: (Character codePoint: 16rE000)).	self should: [ GRPlatform current jsonParserClass parse: '"\uD800"' ] raise: WAJsonSyntaxError.	self should: [ GRPlatform current jsonParserClass parse: '"\uDEAD"' ] raise: WAJsonSyntaxError.	self should: [ GRPlatform current jsonParserClass parse: '"\uDBFF"' ] raise: WAJsonSyntaxError.	self should: [ GRPlatform current jsonParserClass parse: '"\uDC00"' ] raise: WAJsonSyntaxError.	self should: [ GRPlatform current jsonParserClass parse: '"\uDFFF"' ] raise: WAJsonSyntaxError.	self should: [ GRPlatform current jsonParserClass parse: '"\uD800\uDBFF"' ] raise: WAJsonSyntaxError.	self should: [ GRPlatform current jsonParserClass parse: '"\uD800\uE000"' ] raise: WAJsonSyntaxError.	self should: [ GRPlatform current jsonParserClass parse: '"\uD800\DC00"' ] raise: WAJsonSyntaxError.	self should: [ GRPlatform current jsonParserClass parse: '"\uD800DC00"' ] raise: WAJsonSyntaxError.!

testTrue	self assert: (self parse: 'true')! !

!WAJsonParserTest categoriesForMethods!
assertInvalid:!public!utilities! !
parse:!public!utilities! !
supportsEmoji!public!utilities! !
testBigArray!public!tests/array! !
testBigObject!public!tests/objects! !
testEmptyArray!public!tests/array! !
testEmptyObject!public!tests/objects! !
testExplorerEvent!public!tests/real! !
testFalse!public!tests/literals! !
testFirefoxEvent!public!tests/real! !
testInvalidArray!public!tests/invalid! !
testInvalidFalse!public!tests/invalid! !
testInvalidNull!public!tests/invalid! !
testInvalidObject!public!tests/invalid! !
testInvalidString!public!tests/invalid! !
testInvalidTrue!public!tests/invalid! !
testNestedArray!public!tests/array! !
testNestedObject!public!tests/objects! !
testNonBmpCodePoints!dolphin seaside patches!public!tests/literals! !
testNull!public!tests/literals! !
testNumberFloat!public!tests/literals! !
testNumberInteger!public!tests/literals! !
testSafariEvent!public!tests/real! !
testSmallArray!public!tests/array! !
testSmallObject!public!tests/objects! !
testString!public!tests/literals! !
testStringEscaped!public!tests/literals! !
testSurrogatePairs!dolphin seaside patches!public!tests/invalid! !
testTrue!public!tests/literals! !
!

