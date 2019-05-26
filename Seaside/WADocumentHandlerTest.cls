"Filed out from Dolphin Smalltalk 7"!

WARequestHandlerTest subclass: #WADocumentHandlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADocumentHandlerTest guid: (GUID fromString: '{1624780a-c7eb-4113-a4f3-261a88542e0f}')!
WADocumentHandlerTest comment: ''!
!WADocumentHandlerTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WADocumentHandlerTest methodsFor!

newHandler	^ WADocumentHandler		document: 'body { background-color: #ffffff }'		mimeType: WAMimeType textCss		fileName: 'sample.css'!

testCopyDocumentHandler	| copy |	copy := handler copy.	self assert: copy = handler.	self deny: copy == handler.	self assert: copy document = handler document.	self deny: copy document == handler document! !
!WADocumentHandlerTest categoriesFor: #newHandler!private! !
!WADocumentHandlerTest categoriesFor: #testCopyDocumentHandler!public!tests! !

