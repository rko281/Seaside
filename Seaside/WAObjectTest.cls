﻿"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAObjectTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAObjectTest guid: (GUID fromString: '{47e32bcd-b12e-4942-9cb2-489a4e13fe14}')!
WAObjectTest comment: 'I contain unit tests for WAObject.'!
!WAObjectTest categoriesForClass!Seaside-Tests-Core-Base! !
!WAObjectTest methodsFor!

testError	"Make sure #error: signals a subclass of WAError."		self should: [ WAObject new error: 'oh dear' ] raise: WAError.	self should: [ WAObject error: 'oh dear' ] raise: WAError!

testRequestContext	| context |	self should: [ WAObject new requestContext ] raise: WARequestContextNotFound.		context := WARequestContext request: nil response: nil.	WACurrentRequestContext		use: context		during: [ self assert: WAObject new requestContext == context ]! !
!WAObjectTest categoriesFor: #testError!public!tests! !
!WAObjectTest categoriesFor: #testRequestContext!public!tests! !

