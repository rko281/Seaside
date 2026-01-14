"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WAUtf8ResponseTest
	instanceVariableNames: 'response'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUtf8ResponseTest guid: (GUID fromString: '{dd283d4d-5ba5-42e4-85cc-561b665856b2}')!

WAUtf8ResponseTest comment: ''!

!WAUtf8ResponseTest categoriesForClass!Seaside-Tests-UTF8! !

!WAUtf8ResponseTest methodsFor!

assertLines: anArray	self assert: self lines = anArray!

asString: aCollectionOfIntegers	^ String streamContents: [ :stream |		aCollectionOfIntegers do: [ :each |			stream nextPut: (Character codePoint: each) ] ]!

contents	| stream |	stream := WriteStream on: String new.	self response writeOn: stream.	^ stream contents!

createCodec	^ GRCodec forEncoding: 'utf-8'!

lines	"Answer the response as an array of lines, to be used within the tests."	| result stream |	result := OrderedCollection new.	stream := self contents readStream.	[ stream atEnd ] whileFalse: 		[ result add: (stream greaseUpToAll: (String 					with: Character cr					with: Character lf)) ].	^ result asArray!

response	^ response ifNil: [ response := WABufferedResponse new ]!

testRedirectTo	| url |	url :=  WAUrl absolute: 'http://www.seaside.st/'.	url addToPath: self unicodeString.	self response redirectTo: url.	self assertLines:  #('HTTP/1.1 302 Found'		'Location: http://www.seaside.st/%C2%A5%C2%A3%E2%82%AC%24%C2%A2%E2%82%A1%E2%82%A2%E2%82%A3%E2%82%A4%E2%82%A5%E2%82%A6%E2%82%A7%E2%82%A8%E2%82%A9%E2%82%AA%E2%82%AB%E2%82%AD%E2%82%AE%E2%82%AF'		'Content-Length: 0' '')!

unicodeString	^ self asString: #(165 163 8364 36 162 8353 8354 8355 8356 8357 8358 8359 8360 8361 8362 8363 8365 8366 8367)! !

!WAUtf8ResponseTest categoriesForMethods!
assertLines:!private! !
asString:!private! !
contents!private! !
createCodec!configuration!public! !
lines!private! !
response!private! !
testRedirectTo!public!tests! !
unicodeString!private! !
!

