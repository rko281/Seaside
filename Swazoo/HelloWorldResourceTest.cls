"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #HelloWorldResourceTest
	instanceVariableNames: 'hello'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HelloWorldResourceTest guid: (GUID fromString: '{f3d3c8c6-6ff5-45dd-8312-bd763121a9db}')!
HelloWorldResourceTest comment: ''!
!HelloWorldResourceTest categoriesForClass!Unclassified! !
!HelloWorldResourceTest methodsFor!

setUp
	hello := HelloWorldResource uriPattern: 'hello.html'!

testResponse
	| request response |
	request := HTTPGet request: 'hello.html'.
	response := URIResolution resolveRequest: request startingAt: hello.
	self assert: response code = 200.
	self assert: request resourcePath size = 1.
	self assert: request resourcePath first = 'hello.html'! !
!HelloWorldResourceTest categoriesFor: #setUp!public!running! !
!HelloWorldResourceTest categoriesFor: #testResponse!public!testing! !

