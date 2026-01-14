"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WARenderContextTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WARenderContextTest guid: (GUID fromString: '{c782f4e6-d8e7-4d8a-bf9a-dfb89397ce20}')!

WARenderContextTest comment: ''!

!WARenderContextTest categoriesForClass!Seaside-Tests-Core-Rendering! !

!WARenderContextTest methodsFor!

testAbsoluteUrlForResource	| context |	context := WARenderContext new.	context resourceUrl: (WAUrl absolute: 'http://seaside.st/foo').	self assert: (context absoluteUrlForResource: nil) isNil.	self assert: ((context absoluteUrlForResource: 'bar') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: 'bar') greaseString = 'http://seaside.st/foo/bar'.	self assert: ((context absoluteUrlForResource: '/bar') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: '/bar') greaseString = 'http://seaside.st/foo/bar'.	self assert: ((context absoluteUrlForResource: '') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: '') greaseString = 'http://seaside.st/foo'.	self assert: ((context absoluteUrlForResource: 'http://localhost/foo') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: 'http://localhost/foo') greaseString = 'http://localhost/foo'!

testAbsoluteUrlForResourceWithoutBase	| context |	context := WARenderContext new.	context resourceUrl: nil.	self assert: (context absoluteUrlForResource: nil) isNil.	self assert: ((context absoluteUrlForResource: 'bar') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: 'bar') greaseString = '/bar'.	self assert: ((context absoluteUrlForResource: '/bar') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: '/bar') greaseString = '/bar'.	self assert: ((context absoluteUrlForResource: '') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: '') greaseString = '/'.	self assert: ((context absoluteUrlForResource: 'http://localhost/foo') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: 'http://localhost/foo') greaseString = 'http://localhost/foo'! !

!WARenderContextTest categoriesForMethods!
testAbsoluteUrlForResource!public!tests! !
testAbsoluteUrlForResourceWithoutBase!public!tests! !
!

