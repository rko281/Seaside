"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #HomeResourceTest
	instanceVariableNames: 'resource'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
HomeResourceTest guid: (GUID fromString: '{a3a4a988-4c17-4e78-a392-5d3a5b6c5bad}')!
HomeResourceTest comment: ''!
!HomeResourceTest categoriesForClass!Unclassified! !
!HomeResourceTest methodsFor!

setUp
	resource := HomeResource uriPattern: '/' filePath: 'home'!

testRootFileFor
	| request |
	request := HTTPGet request: '/~someUser'.
	URIResolution new initializeRequest: request.
	self assert: (resource rootFileFor: request) asString 
				= (((SpFilename named: 'home') construct: 'someUser') construct: 'html') asString!

testValidateHomePath
	self assert: (resource validateHomePath: '~somebody').
	self assert: (resource validateHomePath: '~somebodyElse').
	self deny: (resource validateHomePath: 'someplace').
	self deny: (resource validateHomePath: 'some~body')! !
!HomeResourceTest categoriesFor: #setUp!public!running! !
!HomeResourceTest categoriesFor: #testRootFileFor!public!running! !
!HomeResourceTest categoriesFor: #testValidateHomePath!public!running! !

