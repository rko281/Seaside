"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WARequestContextTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARequestContextTest guid: (GUID fromString: '{e9762bd4-31fc-4f0a-8417-bf633caf834c}')!
WARequestContextTest comment: ''!
!WARequestContextTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WARequestContextTest methodsFor!

createCodec	^ GRNullCodec new!

createRequest	^ WARequest new!

createRequestContext	^ WARequestContext request: self createRequest response: self createResponse codec: self createCodec!

createResponse	^ WABufferedResponse new!

testNewDocumentNotHandler	"regression test for	http://code.google.com/p/seaside/issues/detail?id=653"	| context document |	context := self createRequestContext.	document := context newDocument.	self assert: document notNil! !
!WARequestContextTest categoriesFor: #createCodec!configuration!public! !
!WARequestContextTest categoriesFor: #createRequest!configuration!public! !
!WARequestContextTest categoriesFor: #createRequestContext!configuration!public! !
!WARequestContextTest categoriesFor: #createResponse!configuration!public! !
!WARequestContextTest categoriesFor: #testNewDocumentNotHandler!public!tests! !

