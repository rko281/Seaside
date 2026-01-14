"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAMainMimeTypeMatchTest
	instanceVariableNames: 'match'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAMainMimeTypeMatchTest guid: (GUID fromString: '{640bf8a4-e036-4564-8042-105e23ea0a0c}')!

WAMainMimeTypeMatchTest comment: ''!

!WAMainMimeTypeMatchTest categoriesForClass!Seaside-Tests-REST-Core! !

!WAMainMimeTypeMatchTest methodsFor!

setUp	match := WAMainMimeTypeMatch main: 'application'!

testMatches	self assert: (match matches: (WAMimeType main: 'application' sub: 'xml')).	self deny: (match matches: (WAMimeType main: 'something' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'application' sub: 'something')).	self deny: (match matches: (WAMimeType main: 'something' sub: 'something')).		self assert: (match matches: (WAMimeType main: '*' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'application' sub: '*')).	self assert: (match matches: (WAMimeType main: '*' sub: '*')).		self deny: (match matches: (WAMimeType main: 'something' sub: '*')).	self assert: (match matches: (WAMimeType main: '*' sub: 'something'))!

testPriority	self assert: match priority = 2! !

!WAMainMimeTypeMatchTest categoriesForMethods!
setUp!public!running! !
testMatches!public!tests! !
testPriority!public!tests! !
!

