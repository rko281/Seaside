"Filed out from Dolphin Smalltalk"!

WARequestHandlerTest subclass: #WADocumentHandlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADocumentHandlerTest guid: (GUID fromString: '{ea7b0a1f-86a5-4eb8-b670-4f0e220b20eb}')!

WADocumentHandlerTest comment: ''!

!WADocumentHandlerTest categoriesForClass!RequestHandling! !

!WADocumentHandlerTest methodsFor!

newHandler	^ WADocumentHandler		document: 'body { background-color: #ffffff }'		mimeType: WAMimeType textCss		fileName: 'sample.css'!

testCopyDocumentHandler	| copy |	copy := handler copy.	self assert: copy = handler.	self deny: copy == handler.	self assert: copy document = handler document.	self deny: copy document == handler document! !

!WADocumentHandlerTest categoriesForMethods!
newHandler!private! !
testCopyDocumentHandler!public!tests! !
!

