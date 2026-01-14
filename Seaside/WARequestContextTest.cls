"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WARequestContextTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARequestContextTest guid: (GUID fromString: '{6f234f85-3133-4e4e-b3ab-b4dd7de6f331}')!

WARequestContextTest comment: ''!

!WARequestContextTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !

!WARequestContextTest methodsFor!

createCodec	^ GRNullCodec new!

createRequest	^ WARequest new!

createRequestContext	^ WARequestContext request: self createRequest response: self createResponse codec: self createCodec!

createResponse	^ WABufferedResponse new!

testNewDocumentNotHandler	"regression test for	http://code.google.com/p/seaside/issues/detail?id=653"	| context document |	context := self createRequestContext.	document := context newDocument.	self assert: document notNil! !

!WARequestContextTest categoriesForMethods!
createCodec!configuration!public! !
createRequest!configuration!public! !
createRequestContext!configuration!public! !
createResponse!configuration!public! !
testNewDocumentNotHandler!public!tests! !
!

