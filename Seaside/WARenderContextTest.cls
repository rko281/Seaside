"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WARenderContextTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WARenderContextTest guid: (GUID fromString: '{3175e9ef-429b-4328-93af-126fbce536c7}')!
WARenderContextTest comment: ''!
!WARenderContextTest categoriesForClass!Seaside-Tests-Core-Rendering! !
!WARenderContextTest methodsFor!

testAbsoluteUrlForResource	| context |	context := WARenderContext new.	context resourceUrl: (WAUrl absolute: 'http://seaside.st/foo').	self assert: (context absoluteUrlForResource: nil) isNil.	self assert: ((context absoluteUrlForResource: 'bar') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: 'bar') greaseString = 'http://seaside.st/foo/bar'.	self assert: ((context absoluteUrlForResource: '/bar') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: '/bar') greaseString = 'http://seaside.st/foo/bar'.	self assert: ((context absoluteUrlForResource: '') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: '') greaseString = 'http://seaside.st/foo'.	self assert: ((context absoluteUrlForResource: 'http://localhost/foo') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: 'http://localhost/foo') greaseString = 'http://localhost/foo'!

testAbsoluteUrlForResourceWithoutBase	| context |	context := WARenderContext new.	context resourceUrl: nil.	self assert: (context absoluteUrlForResource: nil) isNil.	self assert: ((context absoluteUrlForResource: 'bar') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: 'bar') greaseString = '/bar'.	self assert: ((context absoluteUrlForResource: '/bar') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: '/bar') greaseString = '/bar'.	self assert: ((context absoluteUrlForResource: '') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: '') greaseString = '/'.	self assert: ((context absoluteUrlForResource: 'http://localhost/foo') isKindOf: WAUrl).	self assert: (context absoluteUrlForResource: 'http://localhost/foo') greaseString = 'http://localhost/foo'! !
!WARenderContextTest categoriesFor: #testAbsoluteUrlForResource!public!tests! !
!WARenderContextTest categoriesFor: #testAbsoluteUrlForResourceWithoutBase!public!tests! !

