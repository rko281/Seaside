"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WACurrentRequestContextTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACurrentRequestContextTest guid: (GUID fromString: '{f1bc7845-77c5-4a6f-814d-efee4031d72c}')!
WACurrentRequestContextTest comment: ''!
!WACurrentRequestContextTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WACurrentRequestContextTest methodsFor!

testWithoutValue	self should: [ WACurrentRequestContext value ] raise: WARequestContextNotFound!

testWithValue	WACurrentRequestContext		use: 1		during: [ self assert: WACurrentRequestContext value = 1 ]! !
!WACurrentRequestContextTest categoriesFor: #testWithoutValue!public!tests! !
!WACurrentRequestContextTest categoriesFor: #testWithValue!public!tests! !

