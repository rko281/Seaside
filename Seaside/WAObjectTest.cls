"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAObjectTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAObjectTest guid: (GUID fromString: '{c78d9f04-f0e6-4b9b-bb02-130c88303309}')!
WAObjectTest comment: ''!
!WAObjectTest categoriesForClass!Seaside-Tests-Core! !
!WAObjectTest methodsFor!

testError	"Make sure #error: signals a subclass of WAError."		self should: [ WAObject new error: 'oh dear' ] raise: WAError.	self should: [ WAObject error: 'oh dear' ] raise: WAError!

testRequestContext	| context |	self should: [ WAObject new requestContext ] raise: WARequestContextNotFound.		context := WARequestContext request: nil response: nil.	WACurrentRequestContext		use: context		during: [ self assert: WAObject new requestContext == context ]! !
!WAObjectTest categoriesFor: #testError!public!tests! !
!WAObjectTest categoriesFor: #testRequestContext!public!tests! !

