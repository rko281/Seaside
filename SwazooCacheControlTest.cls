"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #SwazooCacheControlTest
	instanceVariableNames: 'resource cacheTarget request cacheControl'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SwazooCacheControlTest guid: (GUID fromString: '{8589898c-2f91-4abf-8144-4a9414f08b9b}')!
SwazooCacheControlTest comment: ''!
!SwazooCacheControlTest categoriesForClass!Unclassified! !
!SwazooCacheControlTest methodsFor!

setUp
	| directory firstFile ws |
	directory := SpFilename named: 'fResTest'.
	directory exists ifFalse: [directory makeDirectory].
	firstFile := directory construct: 'abc.html'.
	ws := firstFile writeStream.
	[ws nextPutAll: 'hello'] ensure: [ws close].
	resource := FileResource uriPattern: 'foo' filePath: 'fResTest'.
	request := HTTPGet request: 'foo/abc.html'.
	URIResolution resolveRequest: request startingAt: resource.
	cacheControl := SwazooCacheControl new request: request
				cacheTarget: (cacheTarget := resource fileFor: request)!

tearDown
	((SpFilename named: 'fResTest') construct: 'abc.html') delete.
	(SpFilename named: 'fResTest') delete!

testIfModifiedSinceModified
	| response timestampInThePast |
	request := HTTPGet request: 'foo/abc.html'.
	timestampInThePast := SpTimestamp fromDate: (Date today subtractDays: 1)
				andTime: Time now.
	request headers addField: (HTTPIfModifiedSinceField new 
				valueFrom: timestampInThePast asRFC1123String).
	cacheControl := SwazooCacheControl new request: request
				cacheTarget: cacheTarget.
	self assert: cacheControl isNotModified not.
	self assert: cacheControl isIfModifiedSince.
	response := HTTPResponse ok.
	cacheControl addResponseHeaders: response.
	self 
		assert: (response headers fieldNamed: 'ETag') entityTag = cacheTarget etag.
	self assert: (response headers fieldNamed: 'Last-Modified') timestamp 
				= cacheTarget lastModified!

testIfModifiedSinceNot
	| response |
	request headers 
		addField: (HTTPIfModifiedSinceField new valueFrom: cacheTarget lastModified asRFC1123String).
	self assert: cacheControl isNotModified.
	self assert: cacheControl isIfModifiedSince not.
	response := HTTPResponse notModified.
	cacheControl addResponseHeaders: response.
	self assert: (response headers fieldNamed: 'ETag') entityTag = cacheTarget etag.
	self assert: (response headers fieldNamed: 'Last-Modified') timestamp = cacheTarget lastModified!

testIfNoneMatchHeaderMatch
	"same etag"

	| response |
	request headers addField: (HTTPIfNoneMatchField new addEntityTag: cacheTarget etag).
	self assert: cacheControl isNotModified.
	self deny: cacheControl isIfNoneMatch.

	"do NOT include last-modified"
	response := HTTPResponse notModified.
	cacheControl addResponseHeaders: response.
	self assert: (response headers fieldNamed: 'ETag') entityTag = cacheTarget etag.
	self assert: (response headers fieldNamed: 'Last-Modified' ifNone: [nil])  isNil!

testIfNoneMatchHeaderNone
	"same etag"

	| response |
	request := HTTPGet request: 'foo/abc.html'.
	request headers addField: (HTTPIfNoneMatchField new valueFrom: 'blah').
	cacheControl := SwazooCacheControl new request: request
				cacheTarget: cacheTarget.
	self assert: cacheControl isNotModified not.
	self assert: cacheControl isIfNoneMatch.
	response := HTTPResponse ok.
	cacheControl addResponseHeaders: response.
	self 
		assert: (response headers fieldNamed: 'ETag') entityTag = cacheTarget etag.
	self assert: (response headers fieldNamed: 'Last-Modified') timestamp 
				= cacheTarget lastModified!

testNoHeaders
	| response |
	self assert: cacheControl isNotModified not.
	self assert: cacheControl isIfNoneMatch.
	self assert: cacheControl isIfModifiedSince.

	"add both"
	response := HTTPResponse ok.
	cacheControl addResponseHeaders: response.
	self 
		assert: (response headers fieldNamed: 'ETag') entityTag = cacheTarget etag.
	self assert: (response headers fieldNamed: 'Last-Modified') timestamp 
				= cacheTarget lastModified! !
!SwazooCacheControlTest categoriesFor: #setUp!public!running! !
!SwazooCacheControlTest categoriesFor: #tearDown!public!running! !
!SwazooCacheControlTest categoriesFor: #testIfModifiedSinceModified!public!testing! !
!SwazooCacheControlTest categoriesFor: #testIfModifiedSinceNot!public!testing! !
!SwazooCacheControlTest categoriesFor: #testIfNoneMatchHeaderMatch!public!testing! !
!SwazooCacheControlTest categoriesFor: #testIfNoneMatchHeaderNone!public!testing! !
!SwazooCacheControlTest categoriesFor: #testNoHeaders!public!testing! !

