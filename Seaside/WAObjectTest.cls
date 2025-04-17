"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAObjectTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAObjectTest guid: (GUID fromString: '{1da3c812-088c-4fa9-a002-009d57f55e2b}')!

WAObjectTest comment: 'I contain unit tests for WAObject.'!

!WAObjectTest categoriesForClass!Base! !

!WAObjectTest methodsFor!

testError	"Make sure #error: signals a subclass of WAError."		self should: [ WAObject new error: 'oh dear' ] raise: WAError.	self should: [ WAObject error: 'oh dear' ] raise: WAError!

testRequestContext	| context |	self should: [ WAObject new requestContext ] raise: WARequestContextNotFound.		context := WARequestContext request: nil response: nil.	WACurrentRequestContext		use: context		during: [ self assert: WAObject new requestContext == context ]! !

!WAObjectTest categoriesForMethods!
testError!public!tests! !
testRequestContext!public!tests! !
!

