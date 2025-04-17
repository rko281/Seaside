"Filed out from Dolphin Smalltalk"!

WAEncoder subclass: #WAXmlEncoder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAXmlEncoder guid: (GUID fromString: '{e387fe5b-7ae9-46f8-a277-e93f04b21604}')!

WAXmlEncoder comment: 'I encode XHTML text.'!

!WAXmlEncoder categoriesForClass!Document! !

!WAXmlEncoder methodsFor!

nextPut: aCharacter	| codePoint |	codePoint := aCharacter greaseInteger.	codePoint = 34 "$""" ifTrue: [ ^ stream nextPutAll: '&quot;' ].	codePoint = 60 "$<" ifTrue: [ ^ stream nextPutAll: '&lt;' ].	codePoint = 38 "$&" ifTrue: [ ^ stream nextPutAll: '&amp;' ].	codePoint = 62 "$>" ifTrue: [ ^ stream nextPutAll: '&gt;' ].	stream nextPut: aCharacter!

nextPutAll: aString	"uses #to:do: for speed reasons (on Pharo)	this is not premature optimization, this is a hotspot method method	and #to:do: shows measurable speed improvements for rendering seaside pages"	1 to: aString size do: [ :index |		self nextPut: (aString at: index) ]! !

!WAXmlEncoder categoriesForMethods!
nextPut:!accessing!public! !
nextPutAll:!accessing!public! !
!

!WAXmlEncoder class methodsFor!

on: aStream codec: aCodec	"For compatibility with WAUrlEncoder"	^ self on: aStream! !

!WAXmlEncoder class categoriesForMethods!
on:codec:!instance creation!public! !
!

