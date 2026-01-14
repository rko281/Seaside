"Filed out from Dolphin Smalltalk"!

WAXmlDocument subclass: #WAUnescapedDocument
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAUnescapedDocument guid: (GUID fromString: '{94cbe3ec-f92e-4666-8d41-5c1ea70eaebf}')!

WAUnescapedDocument comment: 'A WAUnescapedDocument does not do any escaping.'!

!WAUnescapedDocument categoriesForClass!Seaside-Core-Document! !

!WAUnescapedDocument methodsFor!

initializeWithStream: aStream codec: aCodec	super initializeWithStream: aStream codec: aCodec.	xmlEncoder := aStream! !

!WAUnescapedDocument categoriesForMethods!
initializeWithStream:codec:!initialization!public! !
!

