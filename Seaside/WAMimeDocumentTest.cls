"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAMimeDocumentTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMimeDocumentTest guid: (GUID fromString: '{62f1fa6c-98f1-43a5-baee-0f66a7734c3e}')!
WAMimeDocumentTest comment: ''!
!WAMimeDocumentTest categoriesForClass!Seaside-Tests-Core-HTTP! !
!WAMimeDocumentTest methodsFor!

testAsMIMEDocumentByteArray	| document content |	document := #(1 2 3 4) asByteArray seasideMimeDocument.	self assert: document contentType = WAMimeType applicationOctetStream.	content := document content.	self assert: content size = 4.	self assert: content class = ByteArray.	1 to: 4 do: [ :index | self assert: (content at: index) = index ]!

testAsMIMEDocumentByteArrayColon	| document content |	document := #(1 2 3 4) asByteArray seasideMimeDocument.	document mimeType: WAMimeType imageJpeg.	self assert: document contentType = WAMimeType imageJpeg.	content := document content.	self assert: content size = 4.	self assert: content class = ByteArray.	1 to: 4 do: [ :index | self assert: (content at: index) = index ]!

testAsMIMEDocumentString	| document |	document := 'hello Seaside' seasideMimeDocument.	self assert: document contentType = WAMimeType textPlain.	self assert: document content = 'hello Seaside'!

testAsMIMEDocumentStringColon	| document |	document := 'hello Seaside' seasideMimeDocument.	document mimeType: 'text/x-weirdo' seasideMimeType.	self assert: document contentType = 'text/x-weirdo' seasideMimeType.	self assert: document content = 'hello Seaside'!

testByteArraySeasideMimeDocumentType	| document mpeg |	mpeg := WAMimeType main: 'audio' sub: 'mpeg'.	document :=  #(1 2 3 4) asByteArray seasideMimeDocumentType: mpeg.	self assert: document mimeType = mpeg.	self assert: document contents = #(1 2 3 4) asByteArray !

testStringSeasideMimeDocumentType	| document csv |	csv := WAMimeType main: 'text' sub: 'csv'.	document := 'foo,bar' seasideMimeDocumentType: csv.	self assert: document mimeType = csv.	self assert: document contents = 'foo,bar'! !
!WAMimeDocumentTest categoriesFor: #testAsMIMEDocumentByteArray!public!tests! !
!WAMimeDocumentTest categoriesFor: #testAsMIMEDocumentByteArrayColon!public!tests! !
!WAMimeDocumentTest categoriesFor: #testAsMIMEDocumentString!public!tests! !
!WAMimeDocumentTest categoriesFor: #testAsMIMEDocumentStringColon!public!tests! !
!WAMimeDocumentTest categoriesFor: #testByteArraySeasideMimeDocumentType!public!tests! !
!WAMimeDocumentTest categoriesFor: #testStringSeasideMimeDocumentType!public!tests! !

