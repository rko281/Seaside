"Filed out from Dolphin Smalltalk"!

WAEncoder subclass: #WAXmlEncoder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAXmlEncoder guid: (GUID fromString: '{04c307aa-bbf4-4b4a-a403-fd4fef237488}')!

WAXmlEncoder comment: 'I encode XHTML text.'!

!WAXmlEncoder categoriesForClass!Seaside-Core-Document! !

!WAXmlEncoder methodsFor!

nextPut: aCharacter	| codePoint |	codePoint := aCharacter greaseInteger.	codePoint = 34 "$""" ifTrue: [ ^ stream nextPutAll: '&quot;' ].	codePoint = 60 "$<" ifTrue: [ ^ stream nextPutAll: '&lt;' ].	codePoint = 38 "$&" ifTrue: [ ^ stream nextPutAll: '&amp;' ].	codePoint = 62 "$>" ifTrue: [ ^ stream nextPutAll: '&gt;' ].	stream nextPut: aCharacter!

nextPutAll: aString 	"Changed for Dolphin - need to use a stream to respect Dolphin's UTF String structure"

	| read |
	read := aString readStream.
	[read atEnd] whileFalse: [self nextPut: read next]! !

!WAXmlEncoder categoriesForMethods!
nextPut:!accessing!public! !
nextPutAll:!accessing!public! !
!

!WAXmlEncoder class methodsFor!

on: aStream codec: aCodec	"For compatibility with WAUrlEncoder"	^ self on: aStream! !

!WAXmlEncoder class categoriesForMethods!
on:codec:!instance creation!public! !
!

