"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAUtf8UrlTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUtf8UrlTest guid: (GUID fromString: '{be5b030f-d20a-4d2b-9703-7f012e54bed6}')!

WAUtf8UrlTest comment: ''!

!WAUtf8UrlTest categoriesForClass!Seaside-Tests-UTF8! !

!WAUtf8UrlTest methodsFor!

asString: aCollectionOfIntegers	^ String streamContents: [ :stream |		aCollectionOfIntegers do: [ :each |			stream nextPut: (Character codePoint: each) ] ]!

createCodec	^ GRCodec forEncoding: 'utf-8'!

testPathSqueakRegression	"Tests a path that is made up of only WideStrings"	| url |	url := (WAUrl absolute: 'http://book.seaside.st/%E1%B8%83/%C3%A1%C4%8D')		decodedWith: (GRCodec forEncoding: 'utf-8').	self assert: url pathStringUnencoded =		('/', (String with: (Character codePoint: 16r1E03)),		'/', (String with: (Character codePoint: 225) with: (Character codePoint: 269)))!

testPathStringUnencoded	| url |	url := (WAUrl absolute: 'http://book.seaside.st/book/%C3%A1%C4%8D')		decodedWith: (GRCodec forEncoding: 'utf-8').	self assert: url pathStringUnencoded =  ('/book/', (String with: (Character codePoint: 225) with: (Character codePoint: 269)))!

testPrintString	| url |	url :=  WAUrl absolute: 'http://www.seaside.st/'.	url addToPath: self unicodeString.	self assert: url printString = 'http://www.seaside.st/%C2%A5%C2%A3%E2%82%AC%24%C2%A2%E2%82%A1%E2%82%A2%E2%82%A3%E2%82%A4%E2%82%A5%E2%82%A6%E2%82%A7%E2%82%A8%E2%82%A9%E2%82%AA%E2%82%AB%E2%82%AD%E2%82%AE%E2%82%AF'!

unicodeString	^ self asString: #(165 163 8364 36 162 8353 8354 8355 8356 8357 8358 8359 8360 8361 8362 8363 8365 8366 8367)! !

!WAUtf8UrlTest categoriesForMethods!
asString:!private! !
createCodec!configuration!public! !
testPathSqueakRegression!public!tests! !
testPathStringUnencoded!public!tests! !
testPrintString!public!tests! !
unicodeString!private! !
!

