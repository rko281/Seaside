"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #SwazooURITest
	instanceVariableNames: 'fooURI barURI queryURI'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooURITest guid: (GUID fromString: '{8966146c-72d2-4173-b8ce-95364ddbdebb}')!
SwazooURITest comment: ''!
!SwazooURITest categoriesForClass!Unclassified! !
!SwazooURITest methodsFor!

setUp
	fooURI := SwazooURI fromString: 'www.foo.com/index.html'.
	queryURI := SwazooURI fromString: 'www.foo.com/index.html?foo=1&bar=hi'.
	barURI := SwazooURI fromString: 'www.bar.com:8080/files/'!

testHostname
	self assert: fooURI hostname = 'www.foo.com'.
	self assert: queryURI hostname = 'www.foo.com'.
	self assert: barURI hostname = 'www.bar.com'!

testIdentifier
	self assert: fooURI identifier = '/index.html'.
	self assert: queryURI identifier = '/index.html'.
	self assert: barURI identifier = '/files/'!

testIdentifierPath
	self assert: fooURI identifierPath 
				= (OrderedCollection with: '/' with: 'index.html').
	self assert: queryURI identifierPath 
				= (OrderedCollection with: '/' with: 'index.html').
	self 
		assert: barURI identifierPath = (OrderedCollection with: '/' with: 'files')!

testIsDirectory
	self deny: fooURI isDirectory.
	self deny: queryURI isDirectory.
	self assert: barURI isDirectory!

testPort
	self assert: fooURI port = 80.
	self assert: queryURI port = 80.
	self assert: barURI port = 8080!

testQueries
	self deny: (queryURI includesQuery: 'hi').
	self assert: (queryURI includesQuery: 'foo').
	self assert: (queryURI includesQuery: 'bar').
	self assert: (queryURI queryAt: 'foo') = '1'.
	self assert: (queryURI queryAt: 'bar') = 'hi'!

testValue
	self assert: fooURI value = 'http://www.foo.com/index.html'.
	self assert: queryURI value = 'http://www.foo.com/index.html?foo=1&bar=hi'.
	self assert: barURI value = 'http://www.bar.com:8080/files/'! !
!SwazooURITest categoriesFor: #setUp!public!running! !
!SwazooURITest categoriesFor: #testHostname!public!running! !
!SwazooURITest categoriesFor: #testIdentifier!public!running! !
!SwazooURITest categoriesFor: #testIdentifierPath!public!running! !
!SwazooURITest categoriesFor: #testIsDirectory!public!running! !
!SwazooURITest categoriesFor: #testPort!public!running! !
!SwazooURITest categoriesFor: #testQueries!public!running! !
!SwazooURITest categoriesFor: #testValue!public!running! !

