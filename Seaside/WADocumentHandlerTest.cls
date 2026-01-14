"Filed out from Dolphin Smalltalk"!

WARequestHandlerTest subclass: #WADocumentHandlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WADocumentHandlerTest guid: (GUID fromString: '{47942191-33e1-492e-bf77-328ba09dfdd8}')!

WADocumentHandlerTest comment: ''!

!WADocumentHandlerTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !

!WADocumentHandlerTest methodsFor!

newHandler	^ WADocumentHandler		document: 'body { background-color: #ffffff }'		mimeType: WAMimeType textCss		fileName: 'sample.css'!

testCopyDocumentHandler	| copy |	copy := handler copy.	self assert: copy = handler.	self deny: copy == handler.	self assert: copy document = handler document.	self deny: copy document == handler document! !

!WADocumentHandlerTest categoriesForMethods!
newHandler!private! !
testCopyDocumentHandler!public!tests! !
!

