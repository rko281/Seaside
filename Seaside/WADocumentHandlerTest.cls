"Filed out from Dolphin Smalltalk 7"!

WARequestHandlerTest subclass: #WADocumentHandlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WADocumentHandlerTest guid: (GUID fromString: '{b952cf81-eee8-4d5f-b56c-a2acca61f3ce}')!
WADocumentHandlerTest comment: ''!
!WADocumentHandlerTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WADocumentHandlerTest methodsFor!

newHandler	^ WADocumentHandler		document: 'body { background-color: #ffffff }'		mimeType: WAMimeType textCss		fileName: 'sample.css'!

testCopyDocumentHandler	| copy |	copy := handler copy.	self assert: copy = handler.	self deny: copy == handler.	self assert: copy document = handler document.	self deny: copy document == handler document! !
!WADocumentHandlerTest categoriesFor: #newHandler!private! !
!WADocumentHandlerTest categoriesFor: #testCopyDocumentHandler!public!tests! !

