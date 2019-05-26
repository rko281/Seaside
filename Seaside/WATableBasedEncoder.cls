"Filed out from Dolphin Smalltalk 7"!

WAEncoder subclass: #WATableBasedEncoder
	instanceVariableNames: 'table'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'table'!
WATableBasedEncoder guid: (GUID fromString: '{745f6e4d-1c0d-482d-836d-08013b96c006}')!
WATableBasedEncoder comment: 'I encode everything that is written to myself using #nextPut: and #nextPutAll: onto the wrapped stream. The specific encoding that is done is determined by my subclasses (the conversion of a single character is defined in the class-side method #encode:on:).To be efficient, each subclass uses a cached encoding table to transform the most used characters from the UTF Basic Multilingual Plane.'!
!WATableBasedEncoder categoriesForClass!Seaside-Core-Document! !
!WATableBasedEncoder methodsFor!

initializeOn: aStream table: anArray	self initializeOn: aStream.	table := anArray!

nextPut: aCharacter 	| value encoded |	value := aCharacter greaseInteger.	encoded := table at: value + 1.	"Issue 482: use #notNil because it is faster than #isString because it is not actually sent"	encoded notNil		ifTrue: [ stream nextPutAll: encoded ]		ifFalse: [ stream nextPut: aCharacter ]!

nextPutAll: aString 	"uses #to:do: for speed reasons (on Pharo)	this is not premature optimization, this is a hotspot method method	and #to:do: shows measurable speed improvements for rendering seaside pages"	1 to: aString size do: [ :index |		self nextPut: (aString at: index) ]! !
!WATableBasedEncoder categoriesFor: #initializeOn:table:!initialization!public! !
!WATableBasedEncoder categoriesFor: #nextPut:!accessing!public! !
!WATableBasedEncoder categoriesFor: #nextPutAll:!accessing!public! !

!WATableBasedEncoder class methodsFor!

maximumCharacterValue	"find the maximum value of a character that we can instantiate, for Squeak 3.7 this is 255"	^ [ Character codePoint: 16rFFFF.		16rFFFF ]			on: Error			do: [ :error  | 16rFF ]!

new	^ self on: GRPlatform current readWriteCharacterStream!

on: aStream	^ self on: aStream table: table!

on: aStream codec: aCodec	"For compatibility with WAUrlEncoder"	^ self on: aStream!

on: aStream table: anArray	^ self basicNew initializeOn: aStream table: anArray; yourself! !
!WATableBasedEncoder class categoriesFor: #maximumCharacterValue!private! !
!WATableBasedEncoder class categoriesFor: #new!instance creation!public! !
!WATableBasedEncoder class categoriesFor: #on:!instance creation!public! !
!WATableBasedEncoder class categoriesFor: #on:codec:!instance creation!public! !
!WATableBasedEncoder class categoriesFor: #on:table:!instance creation!public! !

