"Filed out from Dolphin Smalltalk"!

WADocument subclass: #WAXmlDocument
	instanceVariableNames: 'urlEncoder xmlEncoder'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAXmlDocument guid: (GUID fromString: '{10f79ed7-7d9a-45af-97a9-b22f2932b77c}')!

WAXmlDocument comment: 'A WAXmlDocument is adds the possibility to generate XML tags and knows encoders for XML text and URLs.'!

!WAXmlDocument categoriesForClass!Document! !

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

!WAXmlDocument categoriesForMethods!
closeTag:!public!writing! !
destroy!initialization!public! !
initializeWithStream:codec:!initialization!public! !
openTag:!public!writing! !
openTag:attributes:!public!writing! !
openTag:attributes:closed:!public!writing! !
print:!public!writing! !
urlEncoder!accessing!public! !
xmlEncoder!accessing!public! !
!

