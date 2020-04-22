"Filed out from Dolphin Smalltalk 7"!

WAMimeDocument subclass: #WABlockMimeDocument
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WABlockMimeDocument guid: (GUID fromString: '{9a21dcfe-16af-4a24-b8c4-aed20fc564be}')!
WABlockMimeDocument comment: 'I am a MIME document whos contents are generated dynamically by a block.I can be used like this:html image	document: (WABlockMimeDocument onBlock: [ self generateSvg ])	mimeType: (WAMimeType main: ''image'' sub: ''svg+xml'')Instance Variables	block:		<aNiladicBlock>block	- the block that generates the contents, either a String or ByteArray'!
!WABlockMimeDocument categoriesForClass!Seaside-Tests-Core-HTTP! !
!WABlockMimeDocument methodsFor!

contents	^ block value!

contents: aCollection	self shouldNotImplement!

initializeOnBlock: aNiladicBlock	self initialize.	self mimeType: nil.	self fileName: nil.	block := aNiladicBlock!

seasideMimeDocumentType: aMimeType	aMimeType = self mimeType		ifTrue: [ ^ self ].	^ self copy		mimeType: aMimeType;		yourself! !
!WABlockMimeDocument categoriesFor: #contents!accessing!public! !
!WABlockMimeDocument categoriesFor: #contents:!accessing!public! !
!WABlockMimeDocument categoriesFor: #initializeOnBlock:!initialization!public! !
!WABlockMimeDocument categoriesFor: #seasideMimeDocumentType:!converting!public! !

!WABlockMimeDocument class methodsFor!

onBlock: aNiladicBlock	^ self basicNew initializeOnBlock: aNiladicBlock! !
!WABlockMimeDocument class categoriesFor: #onBlock:!instance creation!public! !

