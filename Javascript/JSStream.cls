"Filed out from Dolphin Smalltalk"!

JSObject subclass: #JSStream
	instanceVariableNames: 'stream'
	classVariableNames: 'Arguments JavascriptCharacters This'
	poolDictionaries: ''
	classInstanceVariableNames: ''!

JSStream guid: (GUID fromString: '{eef713ca-3b7e-4106-a00f-48983d8db7eb}')!

JSStream comment: 'I represent a verbatim JavaScript string. I support streaming facilities to efficiently encode JavaScript input.'!

!JSStream categoriesForClass!Base! !

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

!JSStream categoriesForMethods!
argument:!convenience!public! !
arguments:!convenience!public! !
contents!accessing!public! !
copy!copying!public! !
initialize!initialization!public! !
javascript:!public!streaming! !
javascriptContentOn:!printing!public! !
json:!public!streaming! !
nextPut:!public!streaming! !
nextPutAll:!public!streaming! !
stream!accessing!public! !
!

!JSStream class methodsFor!

argument: anInteger	^ (Arguments at: anInteger + 1) copy!

argumentAt: anInteger	^ (Arguments at: anInteger) copy!

encodeArguments: aCollection on: aStream 	"Writes aCollection of elements to aStream enclosed in round brakes and separated by a comma."		aStream nextPut: $(.	aCollection		do: [ :each | aStream javascript: each ]		separatedBy: [ aStream nextPut: $, ].	aStream nextPut: $)!

encodeCollection: aCollection on: aStream	"Writes aCollection of elements to aStream enclosed in square brackets."		aStream nextPut: $[.	aCollection		do: [ :each | aStream javascript: each ]		separatedBy: [ aStream nextPut: $, ].	aStream nextPut: $]!

encodeDictionary: aDictionary on: aStream 	"Dictionary or hash-maps common structures in JavaScript, try to optimize their serialization."		| first |	first := true.	aStream nextPut: ${.	aDictionary keysAndValuesDo: [ :key :value |		first			ifTrue: [ first := false ]			ifFalse: [ aStream nextPut: $, ].		self encodeKey: key value: value on: aStream ].	aStream nextPut: $}!

encodeKey: aKey value: aValue on: aStream 	"Key-value pairs are common structures in JavaScript."		aStream javascript: aKey greaseString; nextPut: $:; javascript: aValue!

encodeLessThanIn: aString at: anInteger on: aStream	"Encode <, answer the number of characters coded"	#('<!!--' '<script' '</script') do: [ :each |		(self hasString: aString subString: each at: anInteger) ifTrue: [			aStream nextPutAll: '\x3C'.			aStream greaseNext: each size - 1 putAll: each startingAt: 2.			^ each size ]. ].	aStream nextPut: $<.	^ 1!

encodeNonAsciiCharacter: aCharacter withCodePoint: anInteger on: aStream	"U+2028 and U+2029 have to be treated as new lines"	anInteger = 16r2028 "Line separator"		ifTrue: [ aStream nextPutAll: '\u2028' ]		ifFalse: [			anInteger = 16r2029 "Paragraph separator"				ifTrue: [ aStream nextPutAll: '\u2029' ]				ifFalse: [ aStream nextPut: aCharacter ] ]!

encodeString: aString fastOn: aStream	"Encode a String without <, much simpler implementation that can use #to:do"	1 to: aString size do: [ :index |		| char value encoded |		char := aString at: index.		value := char greaseInteger.		value < JavascriptCharacters size			ifFalse: [				self encodeNonAsciiCharacter: char withCodePoint: value on: aStream ]			ifTrue: [				encoded := JavascriptCharacters at: value + 1.				"we use nil markers becausee #isNil is faster than #isString because it's not				actually sent"				encoded isNil					ifTrue: [ aStream nextPut: char ]					ifFalse: [ aStream nextPutAll: encoded ] ] ]!

encodeString: aString on: aStream	"Strings have a complicated encoding in Javascript, try to optimize their serialization."	aStream nextPut: $".	(aString indexOf: $<) = 0		ifTrue: [ self encodeString: aString fastOn: aStream ]		ifFalse: [ self encodeString: aString slowOn: aStream ].	aStream nextPut: $"!

encodeString: aString slowOn: aStream	"Strings with < a complicated encoding in Javascript"	| index size |	index := 1.	size := aString size.	[ index <= size ] whileTrue: [		| char value encoded |		char := aString at: index.		value := char greaseInteger.		value < JavascriptCharacters size			ifFalse: [				self encodeNonAsciiCharacter: char withCodePoint: value on: aStream.				index := index + 1. ]			ifTrue: [				encoded := JavascriptCharacters at: value + 1.				"we use nil markers becausee #isNil is faster than #isString because it's not				actually sent"				encoded isNil					ifTrue: [						"avoid that browsers mistakenly take the output as a closing tag"  						char = $<							ifTrue: [								index := index + (self encodeLessThanIn: aString at: index on: aStream) ]							ifFalse: [								aStream nextPut: char.								index := index + 1. ] ]					ifFalse: [						aStream nextPutAll: encoded.						index := index + 1 ] ] ]!

hasString: aString subString: aSubstring at: anIntegerIndex	"Strings with < a complicated encoding in Javascript"	(anIntegerIndex + aSubstring size) > (aString size + 1) ifTrue: [		^ false ].	1 to: aSubstring size do: [ :index |		(aString at: anIntegerIndex + index - 1) = (aSubstring at: index)			ifFalse: [ ^ false ] ].	^ true!

initialize	self initializeEncoding.	self initializeSnippets!

initializeEncoding	| printer escapes |	printer := GRNumberPrinter new.	printer base: 16; padding: $0; digits: 2.	JavascriptCharacters := Array new: 128.	0 to: 31 do: [ :index | 		JavascriptCharacters 			at: index + 1			put: '\x' , (printer print: index) ].	escapes := #( 0 '\0' 7 '\a' 8 '\b' 9 '\t' 10 '\n' 12 '\f' 13 '\r' 34 '\"' 92 '\\' ).	1 to: escapes size - 1 by: 2 do: [ :index | 		JavascriptCharacters 			at: (escapes at: index) + 1			put: (escapes at: index + 1) ]!

initializeSnippets	This := self on: 'this'.	Arguments := (0 to: 25)		collect: [ :each | self on: 'arguments[' , each printString , ']' ]!

on: aString	^ self new nextPutAll: aString!

this	^ This copy! !

!JSStream class categoriesForMethods!
argument:!instance creation!public! !
argumentAt:!instance creation!public! !
encodeArguments:on:!encoding!public! !
encodeCollection:on:!encoding!public! !
encodeDictionary:on:!encoding!public! !
encodeKey:value:on:!encoding!public! !
encodeLessThanIn:at:on:!encoding / private!public! !
encodeNonAsciiCharacter:withCodePoint:on:!encoding / private!public! !
encodeString:fastOn:!encoding / private!public! !
encodeString:on:!encoding!public! !
encodeString:slowOn:!encoding / private!public! !
hasString:subString:at:!encoding / private!public! !
initialize!initialization!public! !
initializeEncoding!initialization!public! !
initializeSnippets!initialization!public! !
on:!instance creation!public! !
this!instance creation!public! !
!

