"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAMainMimeTypeMatchTest
	instanceVariableNames: 'match'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMainMimeTypeMatchTest guid: (GUID fromString: '{559278f9-494d-4dde-94cf-858d9a6c8891}')!
WAMainMimeTypeMatchTest comment: ''!
!WAMainMimeTypeMatchTest categoriesForClass!Seaside-Tests-REST-Core! !
!WAMainMimeTypeMatchTest methodsFor!

setUp	match := WAMainMimeTypeMatch main: 'application'!

testMatches	self assert: (match matches: (WAMimeType main: 'application' sub: 'xml')).	self deny: (match matches: (WAMimeType main: 'something' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'application' sub: 'something')).	self deny: (match matches: (WAMimeType main: 'something' sub: 'something')).		self assert: (match matches: (WAMimeType main: '*' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'application' sub: '*')).	self assert: (match matches: (WAMimeType main: '*' sub: '*')).		self deny: (match matches: (WAMimeType main: 'something' sub: '*')).	self assert: (match matches: (WAMimeType main: '*' sub: 'something'))!

testPriority	self assert: match priority = 2! !
!WAMainMimeTypeMatchTest categoriesFor: #setUp!public!running! !
!WAMainMimeTypeMatchTest categoriesFor: #testMatches!public!tests! !
!WAMainMimeTypeMatchTest categoriesFor: #testPriority!public!tests! !

