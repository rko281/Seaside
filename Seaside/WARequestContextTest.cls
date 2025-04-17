"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WARequestContextTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARequestContextTest guid: (GUID fromString: '{69cd3055-36c6-4954-9594-4b35640df7f4}')!

WARequestContextTest comment: ''!

!WARequestContextTest categoriesForClass!RequestHandling! !

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

