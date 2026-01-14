"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAMimeDocumentTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMimeDocumentTest guid: (GUID fromString: '{1589dfc5-e2aa-4a65-ba48-91f29398b31d}')!

WAMimeDocumentTest comment: ''!

!WAMimeDocumentTest categoriesForClass!Seaside-Tests-Core-HTTP! !

!WAMimeDocumentTest methodsFor!

testAsMIMEDocumentByteArray	| document content |	document := #(1 2 3 4) asByteArray seasideMimeDocument.	self assert: document contentType = WAMimeType applicationOctetStream.	content := document content.	self assert: content size = 4.	self assert: content class = ByteArray.	1 to: 4 do: [ :index | self assert: (content at: index) = index ]!

testAsMIMEDocumentByteArrayColon	| document content |	document := #(1 2 3 4) asByteArray seasideMimeDocument.	document mimeType: WAMimeType imageJpeg.	self assert: document contentType = WAMimeType imageJpeg.	content := document content.	self assert: content size = 4.	self assert: content class = ByteArray.	1 to: 4 do: [ :index | self assert: (content at: index) = index ]!

testAsMIMEDocumentString	| document |	document := 'hello Seaside' seasideMimeDocument.	self assert: document contentType = WAMimeType textPlain.	self assert: document content = 'hello Seaside'!

testAsMIMEDocumentStringColon	| document |	document := 'hello Seaside' seasideMimeDocument.	document mimeType: 'text/x-weirdo' seasideMimeType.	self assert: document contentType = 'text/x-weirdo' seasideMimeType.	self assert: document content = 'hello Seaside'!

testByteArraySeasideMimeDocumentType	| document mpeg |	mpeg := WAMimeType main: 'audio' sub: 'mpeg'.	document :=  #(1 2 3 4) asByteArray seasideMimeDocumentType: mpeg.	self assert: document mimeType = mpeg.	self assert: document contents = #(1 2 3 4) asByteArray!

testStringSeasideMimeDocumentType	| document csv |	csv := WAMimeType main: 'text' sub: 'csv'.	document := 'foo,bar' seasideMimeDocumentType: csv.	self assert: document mimeType = csv.	self assert: document contents = 'foo,bar'! !

!WAMimeDocumentTest categoriesForMethods!
testAsMIMEDocumentByteArray!public!tests! !
testAsMIMEDocumentByteArrayColon!public!tests! !
testAsMIMEDocumentString!public!tests! !
testAsMIMEDocumentStringColon!public!tests! !
testByteArraySeasideMimeDocumentType!public!tests! !
testStringSeasideMimeDocumentType!public!tests! !
!

