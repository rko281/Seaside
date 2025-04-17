"Filed out from Dolphin Smalltalk"!

JSObjectTest subclass: #JSConversionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSConversionTest guid: (GUID fromString: '{fd75b8fd-18e6-4521-a473-649e379efc50}')!

JSConversionTest comment: ''!

!JSConversionTest categoriesForClass!Unclassified! !

!JSConversionTest methodsFor!

testArray	self assert: #(1 2 3) equals: '[1,2,3]'.	self assert: (GRSmallOrderedSet withAll: #(1 2 3)) equals: '[1,2,3]'!

testCharacter	self assert: (Character codePoint: 0) equals: '"\0"'.	self assert: Character lf equals: '"\n"'.	self assert: $a equals: '"a"'!

testDateAndTime	self assert: (DateAndTime year: 1980 month: 6 day: 11 hour: 12 minute: 45 second: 23) equals: 'new Date(1980,5,11,12,45,23)'.	self assert: (Date year: 1980 month: 6 day: 11) equals: 'new Date(1980,5,11)'!

testDictionary	self 		assert: (GRSmallDictionary2 new				at: 'foo'					put: 1;				at: 'bar'					put: 2;				at: 'zork'					put: 3;				yourself)		equals: '{"foo":1,"bar":2,"zork":3}'.	self 		assert: (GRSmallDictionary2 new				at: ''					put: 'empty';				yourself)		equals: '{"":"empty"}'.	self 		assert: (Dictionary new				at: 1					put: 'not-a-string';				yourself)		equals: '{"1":"not-a-string"}'.	self 		assert: (Dictionary new				at: '1abc'					put: 'not-an-id';				yourself)		equals: '{"1abc":"not-an-id"}'.	self 		assert: (Dictionary new				at: 'abc1'					put: 'totally sexy';				yourself)		equals: '{"abc1":"totally sexy"}'!

testDuration	self assert: (Duration seconds: 1) equals: '1000'.	self assert: (Duration milliseconds: 1200) equals: '1200'!

testIsJavascript	self deny: 123 isJavascript.	self assert: self mock isJavascript.	self assert: JSCreate new isJavascript!

testJoinAssocation	self		assert: (JSJoin on: (OrderedCollection with: 'foo' -> nil)) 		equals: '"foo"'.	self		assert: (JSJoin on: (OrderedCollection with: 'foo' -> true)) 		equals: '"foo="+encodeURIComponent(true)'.	self		assert: (JSJoin on: (OrderedCollection with: 'foo' -> 123)) 		equals: '"foo="+encodeURIComponent(123)'!

testJoinEmpty	self 		assert: (JSJoin new)		equals: '""'!

testJoinMultiple	self		assert: (JSJoin on: #('foo')) 		equals: '"foo"'.	self		assert: (JSJoin on: #('foo' 'bar'))		equals: '["foo","bar"].join("&")'!

testJoinString	self		assert: (JSJoin on: (OrderedCollection with: 'foo' -> 'bar')) 		equals: '"foo=bar"'.	self		assert: (JSJoin on: (OrderedCollection with: 'foo' -> 'bar zork')) 		equals: '"foo=bar%20zork"'.	self		assert: (JSJoin on: (OrderedCollection with: 'foo' -> 'bar&zork')) 		equals: '"foo=bar%26zork"'!

testLiteral	self assert: true equals: 'true'.	self assert: false equals: 'false'.	self assert: nil equals: 'null'!

testNumber	self assert: 123 equals: '123'.	self assert: Float nan equals: 'NaN'.	self assert: Float infinity equals: 'Infinity'.	self assert: Float infinity * -1 equals: '-Infinity'!

testStringBasic	self assert: 'abc' equals: '"abc"'.	self assert: '123' equals: '"123"'!

testStringEscaping	self assert: '''' equals: '"''"'.	self assert: '"' equals: '"\""'.	self assert: '\' equals: '"\\"'!

testStringSpecial	self assert: (String with: Character cr) equals: '"\r"'.	self assert: (String with: Character lf) equals: '"\n"'.	self assert: (String with: Character tab) equals: '"\t"'.	self assert: (String with: (Character codePoint: 0)) equals: '"\0"'.	self assert: (String with: (Character codePoint: 1)) equals: '"\x01"'.	self assert: (String with: (Character codePoint: 31)) equals: '"\x1f"'!

testStringSpecialLineTerminator	"		ECMA-262 v5.1 (June 2011) section 7.8.4 says that string literals cannot contain an unescaped LineTerminator, which is defined in		section 7.3 as the four characters <LF>, <CR>,  <LS> and  <PS> (U+000A, U+u000D, U+2028 and U+2029)				See also:			http://www.ecma-international.org/publications/files/ECMA-ST/Ecma-262.pdf			http://timelessrepo.com/json-isnt-a-javascript-subset	"	"<LF>"	self assert: (String with: (Character codePoint: 16r000A)) equals: '"\n"'.		"<CR>"	self assert: (String with: (Character codePoint: 16r000D)) equals: '"\r"'.		"<LS>"	self assert: (String with: (Character codePoint: 16r2028)) equals: '"\u2028"'.		"<PS>"	self assert: (String with: (Character codePoint: 16r2029)) equals: '"\u2029"'!

testUrl	self		assert: (WAUrl absolute: 'http://www.seaside.st/?1=a&2=b')		equals: '"http://www.seaside.st/?1=a&2=b"'! !

!JSConversionTest categoriesForMethods!
testArray!public!tests! !
testCharacter!public!tests! !
testDateAndTime!public!tests! !
testDictionary!public!tests! !
testDuration!public!tests! !
testIsJavascript!public!tests/tools! !
testJoinAssocation!public!tests! !
testJoinEmpty!public!tests! !
testJoinMultiple!public!tests! !
testJoinString!public!tests! !
testLiteral!public!tests! !
testNumber!public!tests! !
testStringBasic!public!tests! !
testStringEscaping!public!tests! !
testStringSpecial!public!tests! !
testStringSpecialLineTerminator!public!tests! !
testUrl!public!tests! !
!

