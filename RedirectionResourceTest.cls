"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #RedirectionResourceTest
	instanceVariableNames: 'resource'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
RedirectionResourceTest guid: (GUID fromString: '{148811f7-a5d6-4ace-8042-c1359f138812}')!
RedirectionResourceTest comment: ''!
!RedirectionResourceTest categoriesForClass!Unclassified! !
!RedirectionResourceTest methodsFor!

setUp
	resource := RedirectionResource uriPattern: 'foo'
				targetUri: 'http://abc.def.com'!

testGetResource
	| request response |
	request := HTTPGet request: 'foo'.
	response := URIResolution resolveRequest: request startingAt: resource.
	self assert: response code = 301.
	self assert: (response headers fieldNamed: 'Location') uri asString 
				= 'http://abc.def.com'.
	self assert: request resourcePath size = 1.
	self assert: request resourcePath first = 'foo'! !
!RedirectionResourceTest categoriesFor: #setUp!public!running! !
!RedirectionResourceTest categoriesFor: #testGetResource!public!testing! !

