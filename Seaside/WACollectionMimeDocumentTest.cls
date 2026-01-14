"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WACollectionMimeDocumentTest
	instanceVariableNames: 'document'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACollectionMimeDocumentTest guid: (GUID fromString: '{7e30e251-9fd6-4c5f-bd26-a9b56ec501dc}')!

WACollectionMimeDocumentTest comment: ''!

!WACollectionMimeDocumentTest categoriesForClass!Seaside-Tests-Core-HTTP! !

!WACollectionMimeDocumentTest methodsFor!

setUp	super setUp.	document := WAMimeDocument on: 'aString' mimeType: WAMimeType textPlain!

testAsMIMEDocument	self assert: document seasideMimeDocument == document!

testContent	self assert: document content = 'aString'!

testContentStream	| stream |		stream := document contentStream.	'aString' do: [ :each |		self deny: stream atEnd.		self assert: stream next = each ].		self assert: stream atEnd! !

!WACollectionMimeDocumentTest categoriesForMethods!
setUp!public!running! !
testAsMIMEDocument!public!tests! !
testContent!public!tests! !
testContentStream!public!tests! !
!

