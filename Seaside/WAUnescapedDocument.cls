"Filed out from Dolphin Smalltalk"!

WAXmlDocument subclass: #WAUnescapedDocument
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUnescapedDocument guid: (GUID fromString: '{aa75a92c-b365-4886-9494-399161f29db2}')!

WAUnescapedDocument comment: 'A WAUnescapedDocument does not do any escaping.'!

!WAUnescapedDocument categoriesForClass!Document! !

!WAUnescapedDocument methodsFor!

initializeWithStream: aStream codec: aCodec	super initializeWithStream: aStream codec: aCodec.	xmlEncoder := aStream! !

!WAUnescapedDocument categoriesForMethods!
initializeWithStream:codec:!initialization!public! !
!

