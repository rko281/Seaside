"Filed out from Dolphin Smalltalk 7"!

WATableBasedEncoder subclass: #WAUrlEncoder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUrlEncoder guid: (GUID fromString: '{a9c8f7f1-e0b8-45ff-a465-c55f9d19aec3}')!
WAUrlEncoder comment: 'WAUrlEncoder class	instanceVariableNames: '''''!
!WAUrlEncoder categoriesForClass!Seaside-Core-Document! !
!WAUrlEncoder class methodsFor!

encode: aCharacter on: aStream 	| printer |	('ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.~' includes: aCharacter) ifTrue: [ ^ aStream nextPut: aCharacter ].	aStream nextPut: $%.	printer := GRNumberPrinter new.	printer		base: 16;		padding: $0;		digits: 2;		uppercase.	printer 		print: aCharacter greaseInteger		on: aStream!

initialize	self initializeTable !

initializeTable	"Initializes the encoding table."	| stream characterLimit |	characterLimit := self maximumCharacterValue.	"character values at zero so we need to add 1"	table := Array new: characterLimit + 1.	stream := WriteStream on: (String new: 6).	0 to: characterLimit do: [ :index | 		| character value |		character := Character codePoint: index.		self encode: character on: stream reset.		"Smalltalk indices are one based but character values start at 0"		value := stream contents = (String with: character)			ifTrue: [ nil ]			ifFalse: [ stream contents ].		table at: index + 1 put: value ]!

maximumCharacterValue	"String to byte encoding has already happened in the server."		^ 16rFF!

on: aStream codec: aCodec	^ aCodec url encoderFor: (self on: aStream table: table)! !
!WAUrlEncoder class categoriesFor: #encode:on:!private! !
!WAUrlEncoder class categoriesFor: #initialize!initialization!public! !
!WAUrlEncoder class categoriesFor: #initializeTable!initialization!public! !
!WAUrlEncoder class categoriesFor: #maximumCharacterValue!private! !
!WAUrlEncoder class categoriesFor: #on:codec:!instance creation!public! !

