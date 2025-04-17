"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WACollectionMimeDocumentTest
	instanceVariableNames: 'document'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACollectionMimeDocumentTest guid: (GUID fromString: '{3f00f1e3-5bc9-4813-86a9-8d4b894e8572}')!

WACollectionMimeDocumentTest comment: ''!

!WACollectionMimeDocumentTest categoriesForClass!HTTP! !

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

