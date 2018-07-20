"Filed out from Dolphin Smalltalk 7"!

WADocument subclass: #WAXmlDocument
	instanceVariableNames: 'urlEncoder xmlEncoder'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAXmlDocument guid: (GUID fromString: '{7566d07c-0324-46c3-81a7-6977a2f65e55}')!
WAXmlDocument comment: 'A WAXmlDocument is adds the possibility to generate XML tags and knows encoders for XML text and URLs.'!
!WAXmlDocument categoriesForClass!Seaside-Core-Document! !
!WAXmlDocument methodsFor!

closeTag: aString	"Close the XML tag named aString."	stream nextPutAll: '</'; nextPutAll: aString; nextPut: $>!

destroy	super destroy.	urlEncoder := xmlEncoder := nil!

initializeWithStream: aStream codec: aCodec	super initializeWithStream: aStream codec: aCodec.	xmlEncoder := GRPlatform current xmlEncoderOn: aStream.	urlEncoder := GRPlatform current urlEncoderOn: aStream codec: aCodec!

openTag: aString	"Open the XML tag named aString."	self openTag: aString attributes: nil closed: false!

openTag: aString attributes: anAttributes	"Open the XML tag named aString with the attribute dictionary anAttributes."	self openTag: aString attributes: anAttributes closed: false!

openTag: aString attributes: anAttributes closed: aBoolean	"Open the XML tag named aString with the attribute dictionary anAttributes. Immediately close the tag if aBoolean is true."		stream nextPut: $<; nextPutAll: aString.	anAttributes encodeOn: self.	aBoolean ifTrue: [ stream nextPut: $/ ].	stream nextPut: $>!

print: anObject	anObject encodeOn: self!

urlEncoder	"Answer an encoder for URL data."	^ urlEncoder!

xmlEncoder	"Answer an encoder for XML data."	^ xmlEncoder! !
!WAXmlDocument categoriesFor: #closeTag:!public!writing! !
!WAXmlDocument categoriesFor: #destroy!initialization!public! !
!WAXmlDocument categoriesFor: #initializeWithStream:codec:!initialization!public! !
!WAXmlDocument categoriesFor: #openTag:!public!writing! !
!WAXmlDocument categoriesFor: #openTag:attributes:!public!writing! !
!WAXmlDocument categoriesFor: #openTag:attributes:closed:!public!writing! !
!WAXmlDocument categoriesFor: #print:!public!writing! !
!WAXmlDocument categoriesFor: #urlEncoder!accessing!public! !
!WAXmlDocument categoriesFor: #xmlEncoder!accessing!public! !

