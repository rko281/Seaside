"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WACurrentRequestContextTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACurrentRequestContextTest guid: (GUID fromString: '{9fd3e868-ea00-4288-ab4a-7792e2c05f16}')!

WACurrentRequestContextTest comment: ''!

!WACurrentRequestContextTest categoriesForClass!RequestHandling! !

!WACurrentRequestContextTest methodsFor!

testWithoutValue	self should: [ WACurrentRequestContext value ] raise: WARequestContextNotFound!

testWithValue	WACurrentRequestContext		use: 1		during: [ self assert: WACurrentRequestContext value = 1 ]! !

!WACurrentRequestContextTest categoriesForMethods!
testWithoutValue!public!tests! !
testWithValue!public!tests! !
!

