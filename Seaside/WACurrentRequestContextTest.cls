"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WACurrentRequestContextTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACurrentRequestContextTest guid: (GUID fromString: '{85575d17-9d4c-40c3-a7dc-42ea19523844}')!
WACurrentRequestContextTest comment: ''!
!WACurrentRequestContextTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !
!WACurrentRequestContextTest methodsFor!

testWithoutValue	self should: [ WACurrentRequestContext value ] raise: WARequestContextNotFound!

testWithValue	WACurrentRequestContext		use: 1		during: [ self assert: WACurrentRequestContext value = 1 ]! !
!WACurrentRequestContextTest categoriesFor: #testWithoutValue!public!tests! !
!WACurrentRequestContextTest categoriesFor: #testWithValue!public!tests! !

