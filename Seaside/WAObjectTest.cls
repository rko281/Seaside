"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAObjectTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAObjectTest guid: (GUID fromString: '{92a376a5-741f-40a9-a5d4-d71ea9f4ecce}')!

WAObjectTest comment: 'I contain unit tests for WAObject.'!

!WAObjectTest categoriesForClass!Seaside-Tests-Core-Base! !

!WAObjectTest methodsFor!

testError	"Make sure #error: signals a subclass of WAError."		self should: [ WAObject new error: 'oh dear' ] raise: WAError.	self should: [ WAObject error: 'oh dear' ] raise: WAError!

testRequestContext	| context |	self should: [ WAObject new requestContext ] raise: WARequestContextNotFound.		context := WARequestContext request: nil response: nil.	WACurrentRequestContext		use: context		during: [ self assert: WAObject new requestContext == context ]! !

!WAObjectTest categoriesForMethods!
testError!public!tests! !
testRequestContext!public!tests! !
!

