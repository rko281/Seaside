"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WACurrentRequestContextTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACurrentRequestContextTest guid: (GUID fromString: '{3a9ee7f5-f79b-47d4-afc1-3863a4ea759b}')!

WACurrentRequestContextTest comment: ''!

!WACurrentRequestContextTest categoriesForClass!Seaside-Tests-Core-RequestHandling! !

!WACurrentRequestContextTest methodsFor!

testWithoutValue	self should: [ WACurrentRequestContext value ] raise: WARequestContextNotFound!

testWithValue	WACurrentRequestContext		use: 1		during: [ self assert: WACurrentRequestContext value = 1 ]! !

!WACurrentRequestContextTest categoriesForMethods!
testWithoutValue!public!tests! !
testWithValue!public!tests! !
!

