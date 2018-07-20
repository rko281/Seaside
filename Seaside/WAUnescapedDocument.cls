"Filed out from Dolphin Smalltalk 7"!

WAXmlDocument subclass: #WAUnescapedDocument
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAUnescapedDocument guid: (GUID fromString: '{61b1a82a-08ce-451d-b8c8-8745c4afcaa7}')!
WAUnescapedDocument comment: 'A WAUnescapedDocument is does not do any escaping.'!
!WAUnescapedDocument categoriesForClass!Seaside-Core-Document! !
!WAUnescapedDocument methodsFor!

initializeWithStream: aStream codec: aCodec	super initializeWithStream: aStream codec: aCodec.	xmlEncoder := aStream! !
!WAUnescapedDocument categoriesFor: #initializeWithStream:codec:!initialization!public! !

