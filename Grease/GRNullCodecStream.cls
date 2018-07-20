"Filed out from Dolphin Smalltalk 7"!

GRCodecStream subclass: #GRNullCodecStream
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRNullCodecStream guid: (GUID fromString: '{7aa3050b-92ef-4b0e-a7dd-316f1eaa9896}')!
GRNullCodecStream comment: 'A WANullCodecStream is a WriteStream on a String on which you can both put binary and character data without encoding happening.Instance Variables	stream:		<WriteStream>stream	- a WriteStream on a String'!
!GRNullCodecStream categoriesForClass!Grease-Core-Text! !
!GRNullCodecStream methodsFor!

next	^ stream next!

next: anInteger	^ stream next: anInteger!

nextPut: aCharacterOrByte	aCharacterOrByte isCharacter		ifTrue: [ stream nextPut: aCharacterOrByte ]		ifFalse: [ stream nextPut: (Character codePoint: aCharacterOrByte) ]!

nextPutAll: aStringOrByteArray	aStringOrByteArray isString		ifTrue: [ stream nextPutAll: aStringOrByteArray ]		ifFalse: [			1 to: aStringOrByteArray size do: [ :index |				stream nextPut: (Character codePoint: (aStringOrByteArray at: index)) ] ]! !
!GRNullCodecStream categoriesFor: #next!public!streaming! !
!GRNullCodecStream categoriesFor: #next:!public!streaming! !
!GRNullCodecStream categoriesFor: #nextPut:!public!streaming! !
!GRNullCodecStream categoriesFor: #nextPutAll:!public!streaming! !

