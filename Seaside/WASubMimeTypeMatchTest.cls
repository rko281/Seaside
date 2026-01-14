"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WASubMimeTypeMatchTest
	instanceVariableNames: 'match'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WASubMimeTypeMatchTest guid: (GUID fromString: '{21caedca-e0dd-4535-a7cd-1debb8d92cd8}')!

WASubMimeTypeMatchTest comment: ''!

!WASubMimeTypeMatchTest categoriesForClass!Seaside-Tests-REST-Core! !

!WASubMimeTypeMatchTest methodsFor!

setUp	match := WASubMimeTypeMatch sub: 'xml'!

testMatches	self assert: (match matches: (WAMimeType main: 'application' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'something' sub: 'xml')).	self deny: (match matches: (WAMimeType main: 'application' sub: 'something')).	self deny: (match matches: (WAMimeType main: 'something' sub: 'something')).		self assert: (match matches: (WAMimeType main: '*' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'application' sub: '*')).	self assert: (match matches: (WAMimeType main: '*' sub: '*')).		self assert: (match matches: (WAMimeType main: 'something' sub: '*')).	self deny: (match matches: (WAMimeType main: '*' sub: 'something'))!

testPriority	self assert: match priority = 2! !

!WASubMimeTypeMatchTest categoriesForMethods!
setUp!public!running! !
testMatches!public!tests! !
testPriority!public!tests! !
!

