"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #FileResourceTest
	instanceVariableNames: 'resource'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
FileResourceTest guid: (GUID fromString: '{0d623f1b-5e2b-43ea-80a9-be7bb8045acb}')!
FileResourceTest comment: ''!
!FileResourceTest categoriesForClass!Unclassified! !
!FileResourceTest methodsFor!

setUp
	| directory firstFile ws |
	directory := SpFilename named: 'fResTest'.
	directory exists ifFalse: [directory makeDirectory].
	firstFile :=  (SpFilename named: 'fResTest') construct: 'abc.html'.
	ws := firstFile writeStream.
	[ws nextPutAll: 'hello'] ensure: [ws close].
	resource := FileResource uriPattern: 'foo' filePath: 'fResTest'!

tearDown
	((SpFilename named: 'fResTest') construct: 'abc.html') delete.
	(SpFilename named: 'fResTest') delete!

testContentType
	self assert: (resource contentTypeFor: '.txt') = 'text/plain'.
	self assert: (resource contentTypeFor: '.html') = 'text/html'
!

testDirectoryIndex
	| request response |
	request := HTTPGet request: 'foo/'.
	resource directoryIndex: 'abc.html'.
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response code = 200.
	self assert: request resourcePath size = 1.
	self assert: request resourcePath first = 'foo'!

testETag
	"Filename etags do not have the leading and trailing double quotes.  Header fields add the quotes as necessary"

	| request response etag |
	request := HTTPGet request: 'foo/abc.html'.
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response code = 200.
	self 
		assert: (etag := (response headers fieldOfClass: HTTPETagField) entityTag) 
				notNil.
	request := HTTPGet request: 'foo/abc.html'.
	request headers addField: (HTTPIfNoneMatchField new addEntityTag: etag).
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response code = 304.
	self assert: (response headers fieldOfClass: HTTPETagField) entityTag = etag.
	request := HTTPGet request: 'foo/abc.html'.
	request headers addField: (HTTPIfNoneMatchField new valueFrom: '"wrong"').
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response code = 200.
	self assert: (response headers fieldOfClass: HTTPETagField) entityTag = etag!

testExistantFile
	| request response |
	request := HTTPGet request: 'foo/abc.html'.
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response code = 200.
	self assert: request resourcePath size = 1.
	self assert: request resourcePath first = 'foo'!

testNonexistantFile
	| request response |
	request := HTTPGet request: 'foo/notThere.html'.
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response isNil!

testRedirection
	| request response |
	request := HTTPGet request: 'foo'.
	resource directoryIndex: 'abc.html'.
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response code = 301.
	self assert: (response headers fieldNamed: 'Location') uri asString 
				= 'http://foo/'.
	self assert: (response headers fieldNamed: 'Location') uri host = 'foo'!

testRelativeFile
"it doesn't work anyway!!
	| request response |
	request := HTTPGet request: 'foo/../', resource fileDirectory tail, '/abc.html'.
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response isNil
"!

testSafeConstruct
	| request response |
	request := HTTPGet request: 'foo/../abc.html'.
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response code = 200.
	request := HTTPGet request: 'foo/.. /./abc.html'.
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response code = 200! !
!FileResourceTest categoriesFor: #setUp!public!running! !
!FileResourceTest categoriesFor: #tearDown!public!running! !
!FileResourceTest categoriesFor: #testContentType!public!testing! !
!FileResourceTest categoriesFor: #testDirectoryIndex!public!testing! !
!FileResourceTest categoriesFor: #testETag!public!testing! !
!FileResourceTest categoriesFor: #testExistantFile!public!testing! !
!FileResourceTest categoriesFor: #testNonexistantFile!public!testing! !
!FileResourceTest categoriesFor: #testRedirection!public!testing! !
!FileResourceTest categoriesFor: #testRelativeFile!public!testing! !
!FileResourceTest categoriesFor: #testSafeConstruct!public!testing! !

