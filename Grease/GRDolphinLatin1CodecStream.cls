"Filed out from Dolphin Smalltalk 7"!

GRNullCodecStream subclass: #GRDolphinLatin1CodecStream
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
GRDolphinLatin1CodecStream guid: (GUID fromString: '{c8a29059-cccb-476b-9247-b84a4a6a3632}')!
GRDolphinLatin1CodecStream comment: 'A GRPharoLatin1CodecStream is a WACodecStream optimized for ISO-8859-1 (direct byte to character mapping).'!
!GRDolphinLatin1CodecStream categoriesForClass!Unclassified! !
!GRDolphinLatin1CodecStream methodsFor!

next
	^ Character value: stream next!

next: anInteger
	^(stream next: anInteger) asString! !
!GRDolphinLatin1CodecStream categoriesFor: #next!public!streaming! !
!GRDolphinLatin1CodecStream categoriesFor: #next:!public!streaming! !

