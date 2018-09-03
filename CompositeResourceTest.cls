"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #CompositeResourceTest
	instanceVariableNames: 'composite'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
CompositeResourceTest guid: (GUID fromString: '{2eb54664-424f-48a2-ba30-3b86f56e30c5}')!
CompositeResourceTest comment: ''!
!CompositeResourceTest categoriesForClass!Unclassified! !
!CompositeResourceTest methodsFor!

sampleInSite
	| site |
	site := SwazooSite new.
	site host: 'swazoo.org' ip: '127.0.0.1' port: 8200.
	site addResource: composite!

setUp
	composite := CompositeResource uriPattern: '/'!

testAddResource
	| child |
	composite addResource: (child := HelloWorldResource uriPattern: 'hello.html').
	self assert: composite children size = 1.
	self assert: composite children first == child.
	self assert: child parent == composite!

testAddResources
	| child1 child2 |
	child1 := HelloWorldResource uriPattern: 'hello1.html'.
	child2 := HelloWorldResource uriPattern: 'hello2.html'.
	composite addResources: (Array with: child1 with: child2).
	self assert: composite children size = 2.
	composite children
		do: 
			[:each | 
			self assert: (composite children includes: each).
			self assert: each parent == composite]!

testCurrentUrl
	| child leaf |	
	self sampleInSite.
	self assert: composite currentUrl = 'http://swazoo.org:8200/'.
	composite addResource: (child := CompositeResource uriPattern: 'foo').
	self assert: child currentUrl = 'http://swazoo.org:8200/foo/'.
	child addResource: (leaf := HelloWorldResource uriPattern: 'hi.html').
	self assert: leaf currentUrl = 'http://swazoo.org:8200/foo/hi.html'.!

testEmptyURIPatternInvalid
	composite uriPattern: ''.
	self deny: composite isValidlyConfigured!

testNilURIPatternDoesNothing
	| pattern |
	pattern := composite uriPattern.
	composite uriPattern: nil.
	self assert: composite uriPattern = pattern!

testValidlyConfigured
	self assert: composite isValidlyConfigured! !
!CompositeResourceTest categoriesFor: #sampleInSite!public!testing! !
!CompositeResourceTest categoriesFor: #setUp!public!running! !
!CompositeResourceTest categoriesFor: #testAddResource!public!testing! !
!CompositeResourceTest categoriesFor: #testAddResources!public!testing! !
!CompositeResourceTest categoriesFor: #testCurrentUrl!public!testing! !
!CompositeResourceTest categoriesFor: #testEmptyURIPatternInvalid!public!testing! !
!CompositeResourceTest categoriesFor: #testNilURIPatternDoesNothing!public!testing! !
!CompositeResourceTest categoriesFor: #testValidlyConfigured!public!testing! !

