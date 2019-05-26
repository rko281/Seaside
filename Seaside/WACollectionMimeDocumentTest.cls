"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WACollectionMimeDocumentTest
	instanceVariableNames: 'document'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACollectionMimeDocumentTest guid: (GUID fromString: '{42ace3c8-011e-4a6a-8837-3b01c6707eba}')!
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

