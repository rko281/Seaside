"Filed out from Dolphin Smalltalk"!

WAMimeDocument subclass: #WABlockMimeDocument
	instanceVariableNames: 'block'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABlockMimeDocument guid: (GUID fromString: '{12e28f79-c335-428b-be85-4d6ca648bac1}')!

WABlockMimeDocument comment: 'I am a MIME document whos contents are generated dynamically by a block.I can be used like this:html image	document: (WABlockMimeDocument onBlock: [ self generateSvg ])	mimeType: (WAMimeType main: ''image'' sub: ''svg+xml'')Instance Variables	block:		<aNiladicBlock>block	- the block that generates the contents, either a String or ByteArray'!

!WABlockMimeDocument categoriesForClass!HTTP! !

!WABlockMimeDocument methodsFor!

contents	^ block value!

contents: aCollection	self shouldNotImplement!

initializeOnBlock: aNiladicBlock	self initialize.	self mimeType: nil.	self fileName: nil.	block := aNiladicBlock!

seasideMimeDocumentType: aMimeType	aMimeType = self mimeType		ifTrue: [ ^ self ].	^ self copy		mimeType: aMimeType;		yourself! !

!WABlockMimeDocument categoriesForMethods!
contents!accessing!public! !
contents:!accessing!public! !
initializeOnBlock:!initialization!public! !
seasideMimeDocumentType:!converting!public! !
!

!WABlockMimeDocument class methodsFor!

onBlock: aNiladicBlock	^ self basicNew initializeOnBlock: aNiladicBlock! !

!WABlockMimeDocument class categoriesForMethods!
onBlock:!instance creation!public! !
!

