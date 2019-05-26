"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WASubMimeTypeMatchTest
	instanceVariableNames: 'match'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WASubMimeTypeMatchTest guid: (GUID fromString: '{b4d81ddc-726d-4b61-854a-4b07e0bdc168}')!
WASubMimeTypeMatchTest comment: ''!
!WASubMimeTypeMatchTest categoriesForClass!Seaside-Tests-REST-Core! !
!WASubMimeTypeMatchTest methodsFor!

setUp	match := WASubMimeTypeMatch sub: 'xml'!

testMatches	self assert: (match matches: (WAMimeType main: 'application' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'something' sub: 'xml')).	self deny: (match matches: (WAMimeType main: 'application' sub: 'something')).	self deny: (match matches: (WAMimeType main: 'something' sub: 'something')).		self assert: (match matches: (WAMimeType main: '*' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'application' sub: '*')).	self assert: (match matches: (WAMimeType main: '*' sub: '*')).		self assert: (match matches: (WAMimeType main: 'something' sub: '*')).	self deny: (match matches: (WAMimeType main: '*' sub: 'something'))!

testPriority	self assert: match priority = 2! !
!WASubMimeTypeMatchTest categoriesFor: #setUp!public!running! !
!WASubMimeTypeMatchTest categoriesFor: #testMatches!public!tests! !
!WASubMimeTypeMatchTest categoriesFor: #testPriority!public!tests! !

