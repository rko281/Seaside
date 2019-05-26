"Filed out from Dolphin Smalltalk 7"!

JSObject subclass: #JSStream
	instanceVariableNames: 'stream'
	classVariableNames: 'Arguments JavascriptCharacters This'
	poolDictionaries: ''
	classInstanceVariableNames: ''!
JSStream guid: (GUID fromString: '{2868a4e6-9fbb-4486-81f1-8a19666bb0e1}')!
JSStream comment: 'I represent a verbatim JavaScript string. I support streaming facilities to efficiently encode JavaScript input.'!
!JSStream categoriesForClass!Javascript-Core-Base! !
!JSStream methodsFor!

argument: anObject	"Write a single argument anObject onto the receiving stream."	self arguments: (Array with: anObject)!

arguments: aCollection	"Write aCollection of arguments onto the stream."	self class encodeArguments: aCollection on: self!

contents	^ self stream contents!

copy	^ self class on: self contents!

initialize	super initialize.	stream := WriteStream on: String new!

javascript: anObject	self stream javascript: anObject!

javascriptContentOn: aStream	aStream nextPutAll: self contents!

json: anObject	self stream json: anObject!

nextPut: aCharacter	self stream nextPut: aCharacter!

nextPutAll: aString	self stream nextPutAll: aString!

stream	^ stream! !
!JSStream categoriesFor: #argument:!convenience!public! !
!JSStream categoriesFor: #arguments:!convenience!public! !
!JSStream categoriesFor: #contents!accessing!public! !
!JSStream categoriesFor: #copy!copying!public! !
!JSStream categoriesFor: #initialize!initialization!public! !
!JSStream categoriesFor: #javascript:!public!streaming! !
!JSStream categoriesFor: #javascriptContentOn:!printing!public! !
!JSStream categoriesFor: #json:!public!streaming! !
!JSStream categoriesFor: #nextPut:!public!streaming! !
!JSStream categoriesFor: #nextPutAll:!public!streaming! !
!JSStream categoriesFor: #stream!accessing!public! !

!JSStream class methodsFor!

argument: anInteger	^ (Arguments at: anInteger + 1) copy!

argumentAt: anInteger	^ (Arguments at: anInteger) copy!

encodeArguments: aCollection on: aStream 	"Writes aCollection of elements to aStream enclosed in round brakes and separated by a comma."		aStream nextPut: $(.	aCollection		do: [ :each | aStream javascript: each ]		separatedBy: [ aStream nextPut: $, ].	aStream nextPut: $)!

encodeCollection: aCollection on: aStream	"Writes aCollection of elements to aStream enclosed in square brackets."		aStream nextPut: $[.	aCollection		do: [ :each | aStream javascript: each ]		separatedBy: [ aStream nextPut: $, ].	aStream nextPut: $]!

encodeDictionary: aDictionary on: aStream 	"Dictionary or hash-maps common structures in JavaScript, try to optimize their serialization."		| first |	first := true.	aStream nextPut: ${.	aDictionary keysAndValuesDo: [ :key :value |		first			ifTrue: [ first := false ]			ifFalse: [ aStream nextPut: $, ].		self encodeKey: key value: value on: aStream ].	aStream nextPut: $}!

encodeKey: aKey value: aValue on: aStream 	"Key-value pairs are common structures in JavaScript."		aStream javascript: aKey greaseString; nextPut: $:; javascript: aValue!

encodeString: aString on: aStream 	"Strings have a complicated encoding in Javascript, try to optimize their serialization."			aStream nextPut: $".	1 to: aString size do: [ :index | 		| char value encoded |		char := aString at: index.		value := char greaseInteger.		value < JavascriptCharacters size 			ifFalse: [				"U+2028 and U+2029 have to be treaded as new lines"				value = 16r2028 "Line separator"					ifTrue: [ aStream nextPutAll: '\u2028' ]					ifFalse: [						value = 16r2029 "Paragraph separator"							ifTrue: [ aStream nextPutAll: '\u2029' ]							ifFalse: [ aStream nextPut: char ] ] ]			ifTrue: [				encoded := JavascriptCharacters at: value + 1.				"we use nil markers becausee #isNil is faster than #isString because it's not				actually sent"				encoded isNil 					ifTrue: [ aStream nextPut: char ]					ifFalse: [ aStream nextPutAll: encoded ] ] ].	aStream nextPut: $"!

initialize	self initializeEncoding.	self initializeSnippets!

initializeEncoding	| printer escapes |	printer := GRNumberPrinter new.	printer base: 16; padding: $0; digits: 2.	JavascriptCharacters := Array new: 128.	0 to: 31 do: [ :index | 		JavascriptCharacters 			at: index + 1			put: '\x' , (printer print: index) ].	escapes := #( 0 '\0' 7 '\a' 8 '\b' 9 '\t' 10 '\n' 12 '\f' 13 '\r' 34 '\"' 92 '\\' ).	1 to: escapes size - 1 by: 2 do: [ :index | 		JavascriptCharacters 			at: (escapes at: index) + 1			put: (escapes at: index + 1) ]!

initializeSnippets	This := self on: 'this'.	Arguments := (0 to: 25)		collect: [ :each | self on: 'arguments[' , each printString , ']' ]!

on: aString	^ self new nextPutAll: aString!

this	^ This copy! !
!JSStream class categoriesFor: #argument:!instance creation!public! !
!JSStream class categoriesFor: #argumentAt:!instance creation!public! !
!JSStream class categoriesFor: #encodeArguments:on:!encoding!public! !
!JSStream class categoriesFor: #encodeCollection:on:!encoding!public! !
!JSStream class categoriesFor: #encodeDictionary:on:!encoding!public! !
!JSStream class categoriesFor: #encodeKey:value:on:!encoding!public! !
!JSStream class categoriesFor: #encodeString:on:!encoding!public! !
!JSStream class categoriesFor: #initialize!initialization!public! !
!JSStream class categoriesFor: #initializeEncoding!initialization!public! !
!JSStream class categoriesFor: #initializeSnippets!initialization!public! !
!JSStream class categoriesFor: #on:!instance creation!public! !
!JSStream class categoriesFor: #this!instance creation!public! !

