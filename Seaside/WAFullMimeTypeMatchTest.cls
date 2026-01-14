"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAFullMimeTypeMatchTest
	instanceVariableNames: 'match'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAFullMimeTypeMatchTest guid: (GUID fromString: '{4c2a443c-1199-4914-bcbf-9280fa3aa1ad}')!

WAFullMimeTypeMatchTest comment: ''!

!WAFullMimeTypeMatchTest categoriesForClass!Seaside-Tests-REST-Core! !

!WAFullMimeTypeMatchTest methodsFor!

setUp	match := WAFullMimeTypeMatch main: 'application' sub: 'xml'!

testMatches	self assert: (match matches: (WAMimeType main: 'application' sub: 'xml')).	self deny: (match matches: (WAMimeType main: 'something' sub: 'xml')).	self deny: (match matches: (WAMimeType main: 'application' sub: 'something')).	self deny: (match matches: (WAMimeType main: 'something' sub: 'something')).		self assert: (match matches: (WAMimeType main: '*' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'application' sub: '*')).	self assert: (match matches: (WAMimeType main: '*' sub: '*')).		self deny: (match matches: (WAMimeType main: 'something' sub: '*')).	self deny: (match matches: (WAMimeType main: '*' sub: 'something'))!

testPriority	self assert: match priority = 3! !

!WAFullMimeTypeMatchTest categoriesForMethods!
setUp!public!running! !
testMatches!public!tests! !
testPriority!public!tests! !
!

