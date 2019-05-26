"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAFullMimeTypeMatchTest
	instanceVariableNames: 'match'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAFullMimeTypeMatchTest guid: (GUID fromString: '{58a50f37-18dd-4033-a41f-a22993c50e8d}')!
WAFullMimeTypeMatchTest comment: ''!
!WAFullMimeTypeMatchTest categoriesForClass!Seaside-Tests-REST-Core! !
!WAFullMimeTypeMatchTest methodsFor!

setUp	match := WAFullMimeTypeMatch main: 'application' sub: 'xml'!

testMatches	self assert: (match matches: (WAMimeType main: 'application' sub: 'xml')).	self deny: (match matches: (WAMimeType main: 'something' sub: 'xml')).	self deny: (match matches: (WAMimeType main: 'application' sub: 'something')).	self deny: (match matches: (WAMimeType main: 'something' sub: 'something')).		self assert: (match matches: (WAMimeType main: '*' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'application' sub: '*')).	self assert: (match matches: (WAMimeType main: '*' sub: '*')).		self deny: (match matches: (WAMimeType main: 'something' sub: '*')).	self deny: (match matches: (WAMimeType main: '*' sub: 'something'))!

testPriority	self assert: match priority = 3! !
!WAFullMimeTypeMatchTest categoriesFor: #setUp!public!running! !
!WAFullMimeTypeMatchTest categoriesFor: #testMatches!public!tests! !
!WAFullMimeTypeMatchTest categoriesFor: #testPriority!public!tests! !

