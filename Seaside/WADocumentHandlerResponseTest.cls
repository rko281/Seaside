"Filed out from Dolphin Smalltalk"!

WAContextTest subclass: #WADocumentHandlerResponseTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADocumentHandlerResponseTest guid: (GUID fromString: '{36ab5e40-eb53-40c0-b7d8-85db7c91b48a}')!

WADocumentHandlerResponseTest comment: ''!

!WADocumentHandlerResponseTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !

!WADocumentHandlerResponseTest methodsFor!

assertHttpResponseFrom: aResponse matches: aHandler	| expectedContents actualContents |	self assert: aResponse status = 200.	self assert: aResponse contentType = aHandler document mimeType.	expectedContents := aHandler document contents.	actualContents := aResponse contents.	self assert: actualContents size = expectedContents size.	self assert: actualContents species = expectedContents species.	self assert: aResponse cookies isEmpty!

createAndVerifyBinaryDocumentNamed: aFilename hasAttachment: aHttpHeaderValue	self		createAndVerifyDocumentNamed: aFilename		content: WATestingFiles default samplePng		mimeType: WAMimeType imagePng		hasAttachment: aHttpHeaderValue!

createAndVerifyDocumentNamed: aFilename content: anObject mimeType: aMimeTypeString hasAttachment: aHttpHeaderValue	| handler response |	handler := WADocumentHandler		document: anObject		mimeType: aMimeTypeString		fileName: aFilename.	self assert: handler document contents = anObject.	response := self responseAfter: [ handler handle: self requestContext ].	self assert: (self headerAt: 'Expires' forResponse: response) notNil.	self assert: (self headerAt: 'Content-Disposition' forResponse: response) = aHttpHeaderValue.	self assertHttpResponseFrom: response matches: handler!

createAndVerifyTextDocumentNamed: aFilename hasAttachment: aHttpHeaderValue	self		createAndVerifyDocumentNamed: aFilename		content: 'body { background-color: #ffffff }'		mimeType: WAMimeType textCss		hasAttachment: aHttpHeaderValue!

headerAt: aString forResponse: aResponse	^ aResponse headerAt: aString!

testByteArrayWithFilename	self		createAndVerifyBinaryDocumentNamed: 'sample.png'		hasAttachment: 'attachment; filename="sample.png"'!

testByteArrayWithoutFilename	self		createAndVerifyBinaryDocumentNamed: nil		hasAttachment: nil!

testStringWithFilename	self		createAndVerifyTextDocumentNamed: 'toolbar.css'		hasAttachment: 'attachment; filename="toolbar.css"'!

testStringWithoutFilename	self		createAndVerifyTextDocumentNamed: nil		hasAttachment: nil! !

!WADocumentHandlerResponseTest categoriesForMethods!
assertHttpResponseFrom:matches:!private! !
createAndVerifyBinaryDocumentNamed:hasAttachment:!private! !
createAndVerifyDocumentNamed:content:mimeType:hasAttachment:!private! !
createAndVerifyTextDocumentNamed:hasAttachment:!private! !
headerAt:forResponse:!private! !
testByteArrayWithFilename!public!tests! !
testByteArrayWithoutFilename!public!tests! !
testStringWithFilename!public!tests! !
testStringWithoutFilename!public!tests! !
!

