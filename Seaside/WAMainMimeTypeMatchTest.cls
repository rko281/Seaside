"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAMainMimeTypeMatchTest
	instanceVariableNames: 'match'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAMainMimeTypeMatchTest guid: (GUID fromString: '{0241d7bd-51a1-4715-b386-685d03cd9471}')!
WAMainMimeTypeMatchTest comment: ''!
!WAMainMimeTypeMatchTest categoriesForClass!Seaside-Tests-REST-Core! !
!WAMainMimeTypeMatchTest methodsFor!

setUp	match := WAMainMimeTypeMatch main: 'application'!

testMatches	self assert: (match matches: (WAMimeType main: 'application' sub: 'xml')).	self deny: (match matches: (WAMimeType main: 'something' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'application' sub: 'something')).	self deny: (match matches: (WAMimeType main: 'something' sub: 'something')).		self assert: (match matches: (WAMimeType main: '*' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'application' sub: '*')).	self assert: (match matches: (WAMimeType main: '*' sub: '*')).		self deny: (match matches: (WAMimeType main: 'something' sub: '*')).	self assert: (match matches: (WAMimeType main: '*' sub: 'something'))!

testPriority	self assert: match priority = 2! !
!WAMainMimeTypeMatchTest categoriesFor: #setUp!public!running! !
!WAMainMimeTypeMatchTest categoriesFor: #testMatches!public!tests! !
!WAMainMimeTypeMatchTest categoriesFor: #testPriority!public!tests! !

