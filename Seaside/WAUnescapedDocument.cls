"Filed out from Dolphin Smalltalk 7"!

WAXmlDocument subclass: #WAUnescapedDocument
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUnescapedDocument guid: (GUID fromString: '{87a38824-eeb4-4ff7-b42f-8b95b2f645aa}')!
WAUnescapedDocument comment: 'A WAUnescapedDocument does not do any escaping.'!
!WAUnescapedDocument categoriesForClass!Seaside-Core-Document! !
!WAUnescapedDocument methodsFor!

initializeWithStream: aStream codec: aCodec	super initializeWithStream: aStream codec: aCodec.	xmlEncoder := aStream! !
!WAUnescapedDocument categoriesFor: #initializeWithStream:codec:!initialization!public! !

