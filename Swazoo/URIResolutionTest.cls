"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #URIResolutionTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
URIResolutionTest guid: (GUID fromString: '{627f976c-409d-44cd-80be-2026b89e6efb}')!
URIResolutionTest comment: ''!
!URIResolutionTest categoriesForClass!Unclassified! !
!URIResolutionTest methodsFor!

testCompositeAnswer
	| resource request response | 
	resource := CompositeResource uriPattern: 'base'.
	resource addResource: (HelloWorldResource uriPattern: 'hi').
	request := HTTPGet request: 'base/hi'.
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response code = 200.
	self assert: request resourcePath size = 2.
	self assert: request resourcePath first = 'base'.
	self assert: request resourcePath last = 'hi'!

testCompositeItselfCannotAnswer
	| resource request response |
	resource := CompositeResource uriPattern: 'base'.
	request := HTTPGet request: 'base'.
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response isNil!

testCompositeNoAnswer
	| resource request response |
	resource := CompositeResource uriPattern: 'base'.
	resource addResource: (HelloWorldResource uriPattern: 'hi').
	request := HTTPGet request: 'tail/hi'.
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response isNil!

testLeafAnswer
	| resource request response | 
	resource := HelloWorldResource uriPattern: 'hi'.
	request := HTTPGet request: 'hi'.
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response code = 200.
	self assert: request resourcePath size = 1.
	self assert: request resourcePath first = 'hi'!

testNoAnswerWhenDisabled
	| resource request response |
	resource := HelloWorldResource uriPattern: 'hi'.
	resource disable.
	request := HTTPGet request: 'hi'.
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response isNil!

testResourcePath
	| request resolution |
	request := HTTPGet 
				request: 'foo/bar/baz/quux'
				from: 'localhost:1234'
				at: '1.2.3.4'.
	resolution := URIResolution new initializeRequest: request.
	self assert: resolution resourcePath = #('foo') asOrderedCollection.
	resolution advance.
	self assert: resolution resourcePath = #('foo' 'bar') asOrderedCollection.
	resolution advance.
	self 
		assert: resolution resourcePath = #('foo' 'bar' 'baz') asOrderedCollection.
	resolution advance.
	self assert: resolution resourcePath = #('foo' 'bar' 'baz' 'quux') asOrderedCollection!

testSiteAnswer
	| resource request response |
	resource := SwazooSite new host: 'foo.com' ip: '1.2.3.4' port: 80.
	resource addResource: (HelloWorldResource uriPattern: '/').
	request := HTTPGet
				request: '/'
				from: 'foo.com'
				at: '1.2.3.4'.
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response code = 200.
	self assert: request resourcePath size = 1.
	self assert: request resourcePath first = '/'!

testSiteMatch
	| request site visitor |
	request := HTTPGet 
				request: 'foo'
				from: 'myhosthost:1234'
				at: '1.2.3.4'.
	visitor := URIResolution new initializeRequest: request.
	site := SwazooSite new host: 'myhosthost' ip: '1.2.3.4' port: 1234.
	self assert: (visitor siteMatch: site)!

testSiteMismatch
	| request site visitor |
	request := HTTPGet 
				request: 'foo'
				from: 'localhost:1234'
				at: '1.2.3.4'.
	visitor := URIResolution new initializeRequest: request.
	site := SwazooSite new host: 'remotehost' ip: '1.2.3.4' port: 1234.
	self deny: (visitor siteMatch: site)!

testStringMatch
	| request visitor resource |
	request := HTTPGet request: 'foo'.
	visitor := URIResolution new initializeRequest: request.
	resource := HelloWorldResource uriPattern: 'foo'.
	self assert: (visitor stringMatch: resource)!

testStringMismatch
	| request visitor resource |
	request := HTTPGet request: 'foo'.
	visitor := URIResolution new initializeRequest: request.
	resource := HelloWorldResource uriPattern: 'Foo'.
	self deny: (visitor stringMatch: resource)!

testTailPath
	| request resolution |
	request := HTTPGet 
				request: 'foo/bar/baz/quux'
				from: 'localhost:1234'
				at: '1.2.3.4'.
	resolution := URIResolution new initializeRequest: request.
	self 
		assert: resolution tailPath = #('bar' 'baz' 'quux') asOrderedCollection.
	resolution advance.
	self assert: resolution tailPath = #('baz' 'quux') asOrderedCollection.
	resolution advance.
	self assert: resolution tailPath = #('quux') asOrderedCollection.
	resolution advance.
	self assert: resolution tailPath isEmpty! !
!URIResolutionTest categoriesFor: #testCompositeAnswer!public!testing! !
!URIResolutionTest categoriesFor: #testCompositeItselfCannotAnswer!public!testing! !
!URIResolutionTest categoriesFor: #testCompositeNoAnswer!public!testing! !
!URIResolutionTest categoriesFor: #testLeafAnswer!public!testing! !
!URIResolutionTest categoriesFor: #testNoAnswerWhenDisabled!public!testing! !
!URIResolutionTest categoriesFor: #testResourcePath!public!testing! !
!URIResolutionTest categoriesFor: #testSiteAnswer!public!testing! !
!URIResolutionTest categoriesFor: #testSiteMatch!public!testing! !
!URIResolutionTest categoriesFor: #testSiteMismatch!public!testing! !
!URIResolutionTest categoriesFor: #testStringMatch!public!testing! !
!URIResolutionTest categoriesFor: #testStringMismatch!public!testing! !
!URIResolutionTest categoriesFor: #testTailPath!public!testing! !

