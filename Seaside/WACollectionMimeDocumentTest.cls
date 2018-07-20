"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WACollectionMimeDocumentTest
	instanceVariableNames: 'document'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACollectionMimeDocumentTest guid: (GUID fromString: '{d8f250f7-338c-48d5-9b0c-b4770dfa27f5}')!
WACollectionMimeDocumentTest comment: ''!
!WACollectionMimeDocumentTest categoriesForClass!Seaside-Tests-Core-HTTP! !
!WACollectionMimeDocumentTest methodsFor!

setUp	super setUp.	document := WAMimeDocument on: 'aString' mimeType: WAMimeType textPlain!

testAsMIMEDocument	self assert: document seasideMimeDocument == document!

testContent	self assert: document content = 'aString'!

testContentStream	| stream |		stream := document contentStream.	'aString' do: [ :each |		self deny: stream atEnd.		self assert: stream next = each ].		self assert: stream atEnd! !
!WACollectionMimeDocumentTest categoriesFor: #setUp!public!running! !
!WACollectionMimeDocumentTest categoriesFor: #testAsMIMEDocument!public!tests! !
!WACollectionMimeDocumentTest categoriesFor: #testContent!public!tests! !
!WACollectionMimeDocumentTest categoriesFor: #testContentStream!public!tests! !

