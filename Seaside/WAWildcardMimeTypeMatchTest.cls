"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAWildcardMimeTypeMatchTest
	instanceVariableNames: 'match'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAWildcardMimeTypeMatchTest guid: (GUID fromString: '{bf68bfca-184d-4d0a-a635-de4d0a503d14}')!

WAWildcardMimeTypeMatchTest comment: ''!

!WAWildcardMimeTypeMatchTest categoriesForClass!Seaside-Tests-REST-Core! !

!WAWildcardMimeTypeMatchTest methodsFor!

setUp	match := WAWildcardMimeTypeMatch new!

testMatches	self assert: (match matches: (WAMimeType main: 'application' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'something' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'application' sub: 'something')).	self assert: (match matches: (WAMimeType main: 'something' sub: 'something')).		self assert: (match matches: (WAMimeType main: '*' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'application' sub: '*')).	self assert: (match matches: (WAMimeType main: '*' sub: '*'))!

testPriority	self assert: match priority = 1! !

!WAWildcardMimeTypeMatchTest categoriesForMethods!
setUp!public!running! !
testMatches!public!tests! !
testPriority!public!tests! !
!

