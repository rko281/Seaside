"Filed out from Dolphin Smalltalk"!

WAEncoder subclass: #WATableBasedEncoder
	instanceVariableNames: 'table'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'table'!

WATableBasedEncoder guid: (GUID fromString: '{6d255d33-5f23-4ade-8de3-6c7d12743cc2}')!

WATableBasedEncoder comment: 'I encode everything that is written to myself using #nextPut: and #nextPutAll: onto the wrapped stream. The specific encoding that is done is determined by my subclasses (the conversion of a single character is defined in the class-side method #encode:on:).To be efficient, each subclass uses a cached encoding table to transform the most used characters from the UTF Basic Multilingual Plane.'!

!WATableBasedEncoder categoriesForClass!Seaside-Core-Document! !

!WATableBasedEncoder methodsFor!

greaseNext: anInteger putAll: aCollection startingAt: startIndex	"uses #to:do: for speed reasons (on Pharo)	this is not premature optimization, this is a hotspot method method	and #to:do: shows measurable speed improvements for rendering seaside pages"	startIndex to: startIndex + anInteger - 1  do: [ :index |		self nextPut: (aCollection at: index) ]!

initializeOn: aStream table: anArray	self initializeOn: aStream.	table := anArray!

nextPutAll: aString 	"Changed for Dolphin - need to use a stream to respect Dolphin's UTF String structure"

	| read |
	read := aString readStream.
	[read atEnd] whileFalse: [self nextPut: read next]! !

!WATableBasedEncoder categoriesForMethods!
greaseNext:putAll:startingAt:!accessing!public! !
initializeOn:table:!initialization!public! !
nextPutAll:!accessing!public! !
!

!WATableBasedEncoder class methodsFor!

maximumCharacterValue	"find the maximum value of a character that we can instantiate, for Squeak 3.7 this is 255"	^ [ Character codePoint: 16rFFFF.		16rFFFF ]			on: Error			do: [ :error  | 16rFF ]!

new	^ self on: GRPlatform current readWriteCharacterStream!

on: aStream	^ self on: aStream table: table!

on: aStream codec: aCodec	"For compatibility with WAUrlEncoder"	^ self on: aStream!

on: aStream table: anArray	^ self basicNew initializeOn: aStream table: anArray; yourself! !

!WATableBasedEncoder class categoriesForMethods!
maximumCharacterValue!private! !
new!instance creation!public! !
on:!instance creation!public! !
on:codec:!instance creation!public! !
on:table:!instance creation!public! !
!

