"Filed out from Dolphin Smalltalk 7"!

WAObject subclass: #WAJsonParser
	instanceVariableNames: 'stream'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAJsonParser guid: (GUID fromString: '{b11f9055-1135-401c-ae44-12474daf6eaa}')!
WAJsonParser comment: 'I am a parser for JSON. It is a bit more forgiving than the standard and allows any kind of top level element except numbers, not just {} and []. See http://www.json.org/ for details.I can be subclasses to create more sophisticated objects than just Arrays and Dictionaries. To do that, override the one or more methods in the creating protocol.'!
!WAJsonParser categoriesForClass!Seaside-JSON-Core! !
!WAJsonParser methodsFor!

addProperty: anAssociation to: anObject	"Add the property anAssociation described with key and value to anObject. Subclasses might want to refine this implementation."		^ anObject 		add: anAssociation;		yourself!

addValue: anObject to: aCollection	"Add anObject to aCollection. Subclasses might want to refine this implementation."	^ aCollection copyWith: anObject!

createArray	"Create an empty collection. Subclasses might want to refine this implementation."	^ Array new!

createFalse	"Create the false literal. Subclasses might want to refine this implementation."		^ false!

createNull	"Create the null literal. Subclasses might want to refine this implementation."	^ nil!

createNumber: aString	"Create a number literal. Subclasses might want to refine this implementation."	^ aString asNumber!

createObject	"Create an empty object. Subclasses might want to refine this implementation."		^ Dictionary new!

createProperty: aKey with: aValue	"Create an empty attribute value pair. Subclasses might want to refine this implementation."		^ aKey -> aValue!

createString: aString	"Create a string literal. Subclasses might want to refine this implementation."	^ aString!

createTrue	"Create the true literal. Subclasses might want to refine this implementation."	^ true!

error: aString	"Raise a parse error labelled aString."	^ WAJsonSyntaxError signal: aString!

expectChar: aChar	"Expects aChar and consume input, throw an error otherwise."	^ (self matchChar: aChar) ifFalse: [ self error: aChar greaseString, ' expected' ]!

initializeOn: aStream	self initialize.	stream := aStream!

match: aString ifTrue: aBlock	" Tries to match the string, consume input and answer the value of the block if true."	self whitespace.	aString do: [ :each |		(stream atEnd or: [ each ~= stream next ]) ifTrue: [ self error: aString , ' expected' ] ].	aBlock value!

matchChar: aChar	" Tries to match the character, consume input and answer true if successful."	self whitespace.	(stream atEnd or: [ stream peek ~= aChar ]) ifTrue: [ ^ false ].	stream next.	^ true!

parse	| result |	result := self whitespace; parseValue.	self whitespace.	stream atEnd		ifFalse: [ self error: 'end of input expected' ].	^ result!

parseArray	| result |	self expectChar: $[.	result := self createArray.	(self matchChar: $])		ifTrue: [ ^ result ].	[ stream atEnd ] whileFalse: [		result := self			addValue: self parseValue			to: result.		(self matchChar: $]) 			ifTrue: [ ^ result ].		self expectChar: $, ].	self error: 'end of array expected'!

parseCharacter	| char |	(char := stream next) = $\ 		ifFalse: [ ^ char ].	(char := stream next) = $" 		ifTrue: [ ^ char ].	char = $\		ifTrue: [ ^ char ].	char = $/		ifTrue: [ ^ char ].	char = $b		ifTrue: [ ^ Character backspace ].	char = $f		ifTrue: [ ^ Character newPage ].	char = $n		ifTrue: [ ^ Character lf ].	char = $r		ifTrue: [ ^ Character cr ].	char = $t		ifTrue: [ ^ Character tab ].	char = $u		ifTrue: [ ^ self parseCharacterHex ].	self error: 'invalid escape character \' , (String with: char)!

parseCharacterHex	| value |	value := self parseCharacterHexDigit.	3 timesRepeat: [ value := (value << 4) + self parseCharacterHexDigit ].	^ Character codePoint: value!

parseCharacterHexDigit	| digit |	stream atEnd ifFalse: [ 		digit := stream next greaseInteger.		(digit between: "$0" 48 and: "$9" 57)			ifTrue: [ ^ digit - 48 ].		(digit between: "$A" 65 and: "$F" 70)			ifTrue: [ ^ digit - 55 ].		(digit between: "$a" 97 and: "$f" 102)			ifTrue: [ ^ digit - 87 ] ].	self error: 'hex-digit expected'!

parseNumber	| negated number |	negated := stream peek = $-.	negated ifTrue: [ stream next ].	number := self parseNumberInteger.	(stream peek = $.) ifTrue: [		stream next. 		number := number + self parseNumberFraction ].	('eE' includes: stream peek) ifTrue: [		stream next.		number := number * self parseNumberExponent ].	negated ifTrue: [ number := number negated ].	^ self whitespace; createNumber: number!

parseNumberExponent	| number negated |	number := 0.	negated := stream peek = $-.	(negated or: [ stream peek = $+ ]) ifTrue: [ stream next ].	[ stream atEnd not and: [ stream peek isDigit ] ]		whileTrue: [ number := 10 * number + (stream next greaseInteger - 48) ].	negated ifTrue: [ number := number negated ].	^ 10 raisedTo: number!

parseNumberFraction	| number power |	number := 0.	power := 1.0.	[ stream atEnd not and: [ stream peek isDigit ] ] whileTrue: [		number := 10 * number + (stream next greaseInteger - 48).		power := power * 10.0 ].	^ number / power!

parseNumberInteger	| number |	number := 0.	[ stream atEnd not and: [ stream peek isDigit ] ]		whileTrue: [ number := 10 * number + (stream next greaseInteger - 48) ].	^ number!

parseObject	| result |	self expectChar: ${.	result := self createObject.	(self matchChar: $})		ifTrue: [ ^ result ].	[ stream atEnd ] whileFalse: [		result := self			addProperty: self parseProperty			to: result.		(self matchChar: $})			ifTrue: [ ^ result ].		self expectChar: $, ].	self error: 'end of object expected'!

parseProperty	| name value |	name := self parseString.	self expectChar: $:.	value := self parseValue.	^ self createProperty: name with: value!

parseString	| result |	self expectChar: $".	result := WriteStream on: String new.	[ stream atEnd or: [ stream peek = $" ] ] 		whileFalse: [ result nextPut: self parseCharacter ].	^ self expectChar: $"; createString: result contents!

parseValue	stream atEnd ifFalse: [ 		| char |		self whitespace.		char := stream peek.		char = ${			ifTrue: [ ^ self parseObject ].		char = $[			ifTrue: [ ^ self parseArray ].		char = $"			ifTrue: [ ^ self parseString ].		(char = $- or: [ char between: $0 and: $9 ])			ifTrue: [ ^ self parseNumber ].		(char = $t)			ifTrue: [ self match: 'true' ifTrue: [ ^ self createTrue ] ].		(char = $f)			ifTrue: [ self match: 'false' ifTrue: [ ^ self createFalse ] ].		(char = $n)			ifTrue: [ self match: 'null' ifTrue: [ ^ self createNull ] ] ].	self error: 'invalid input'!

whitespace	"Strip whitespaces from the input stream."	[ stream atEnd not and: [ stream peek isSeparator ] ]		whileTrue: [ stream next ]! !
!WAJsonParser categoriesFor: #addProperty:to:!adding!public! !
!WAJsonParser categoriesFor: #addValue:to:!adding!public! !
!WAJsonParser categoriesFor: #createArray!creating!public! !
!WAJsonParser categoriesFor: #createFalse!creating!public! !
!WAJsonParser categoriesFor: #createNull!creating!public! !
!WAJsonParser categoriesFor: #createNumber:!creating!public! !
!WAJsonParser categoriesFor: #createObject!creating!public! !
!WAJsonParser categoriesFor: #createProperty:with:!creating!public! !
!WAJsonParser categoriesFor: #createString:!creating!public! !
!WAJsonParser categoriesFor: #createTrue!creating!public! !
!WAJsonParser categoriesFor: #error:!private! !
!WAJsonParser categoriesFor: #expectChar:!private! !
!WAJsonParser categoriesFor: #initializeOn:!initialization!public! !
!WAJsonParser categoriesFor: #match:ifTrue:!private! !
!WAJsonParser categoriesFor: #matchChar:!private! !
!WAJsonParser categoriesFor: #parse!parsing!public! !
!WAJsonParser categoriesFor: #parseArray!parsing!public! !
!WAJsonParser categoriesFor: #parseCharacter!parsing/internal!public! !
!WAJsonParser categoriesFor: #parseCharacterHex!parsing/internal!public! !
!WAJsonParser categoriesFor: #parseCharacterHexDigit!parsing/internal!public! !
!WAJsonParser categoriesFor: #parseNumber!parsing/internal!public! !
!WAJsonParser categoriesFor: #parseNumberExponent!parsing/internal!public! !
!WAJsonParser categoriesFor: #parseNumberFraction!parsing/internal!public! !
!WAJsonParser categoriesFor: #parseNumberInteger!parsing/internal!public! !
!WAJsonParser categoriesFor: #parseObject!parsing!public! !
!WAJsonParser categoriesFor: #parseProperty!parsing/internal!public! !
!WAJsonParser categoriesFor: #parseString!parsing/internal!public! !
!WAJsonParser categoriesFor: #parseValue!parsing!public! !
!WAJsonParser categoriesFor: #whitespace!private! !

!WAJsonParser class methodsFor!

new	self error: 'Instantiate the parser with a stream.'!

on: aStream	^ self basicNew initializeOn: aStream!

parse: aString	^ self parseStream: aString readStream!

parseStream: aStream	^ (self on: aStream) parse! !
!WAJsonParser class categoriesFor: #new!instance creation!public! !
!WAJsonParser class categoriesFor: #on:!instance creation!public! !
!WAJsonParser class categoriesFor: #parse:!accessing!public! !
!WAJsonParser class categoriesFor: #parseStream:!accessing!public! !

