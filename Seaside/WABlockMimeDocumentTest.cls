"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WABlockMimeDocumentTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WABlockMimeDocumentTest guid: (GUID fromString: '{813b9906-6310-4270-82d6-47b052e2257a}')!

WABlockMimeDocumentTest comment: ''!

!WABlockMimeDocumentTest categoriesForClass!HTTP! !

!WABlockMimeDocumentTest methodsFor!

testAsMIMEDocumentByteArray	| document content |	document := WABlockMimeDocument onBlock: [ #(1 2 3 4) asByteArray ].	self assert: document contentType = WAMimeType applicationOctetStream.	content := document content.	self assert: content size = 4.	self assert: content class = ByteArray.	1 to: 4 do: [ :index | self assert: (content at: index) = index ]!

testAsMIMEDocumentByteArrayColon	| document content |	document := WABlockMimeDocument onBlock: [ #(1 2 3 4) asByteArray ].	document mimeType: WAMimeType imageJpeg.	self assert: document contentType = WAMimeType imageJpeg.	content := document content.	self assert: content size = 4.	self assert: content class = ByteArray.	1 to: 4 do: [ :index | self assert: (content at: index) = index ]!

testAsMIMEDocumentString	| document |	document := (WABlockMimeDocument onBlock: [ 'hello Seaside' ])		mimeType: WAMimeType textPlain;		yourself.	self assert: document contentType = WAMimeType textPlain.	self assert: document content = 'hello Seaside'!

testAsMIMEDocumentStringColon	| document |	document := WABlockMimeDocument onBlock: [ 'hello Seaside' ].	document mimeType: 'text/x-weirdo' seasideMimeType.	self assert: document contentType = 'text/x-weirdo' seasideMimeType.	self assert: document content = 'hello Seaside'!

testByteArraySeasideMimeDocumentType	| document mpeg |	mpeg := WAMimeType main: 'audio' sub: 'mpeg'.	document :=  (WABlockMimeDocument onBlock: [ #(1 2 3 4) asByteArray ]) seasideMimeDocumentType: mpeg.	self assert: document mimeType = mpeg.	self assert: document contents = #(1 2 3 4) asByteArray!

testStringSeasideMimeDocumentType	| document csv |	csv := WAMimeType main: 'text' sub: 'csv'.	document := (WABlockMimeDocument onBlock: [ 'foo,bar' ]) seasideMimeDocumentType: csv.	self assert: document mimeType = csv.	self assert: document contents = 'foo,bar'! !

!WABlockMimeDocumentTest categoriesForMethods!
testAsMIMEDocumentByteArray!public!tests! !
testAsMIMEDocumentByteArrayColon!public!tests! !
testAsMIMEDocumentString!public!tests! !
testAsMIMEDocumentStringColon!public!tests! !
testByteArraySeasideMimeDocumentType!public!tests! !
testStringSeasideMimeDocumentType!public!tests! !
!

