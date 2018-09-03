"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAWildcardMimeTypeMatchTest
	instanceVariableNames: 'match'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAWildcardMimeTypeMatchTest guid: (GUID fromString: '{8c5b0fde-4847-4f8d-b7ee-27598cbc435d}')!
WAWildcardMimeTypeMatchTest comment: ''!
!WAWildcardMimeTypeMatchTest categoriesForClass!Seaside-Tests-REST-Core! !
!WAWildcardMimeTypeMatchTest methodsFor!

setUp	match := WAWildcardMimeTypeMatch new!

testMatches	self assert: (match matches: (WAMimeType main: 'application' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'something' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'application' sub: 'something')).	self assert: (match matches: (WAMimeType main: 'something' sub: 'something')).		self assert: (match matches: (WAMimeType main: '*' sub: 'xml')).	self assert: (match matches: (WAMimeType main: 'application' sub: '*')).	self assert: (match matches: (WAMimeType main: '*' sub: '*'))!

testPriority	self assert: match priority = 1! !
!WAWildcardMimeTypeMatchTest categoriesFor: #setUp!public!running! !
!WAWildcardMimeTypeMatchTest categoriesFor: #testMatches!public!tests! !
!WAWildcardMimeTypeMatchTest categoriesFor: #testPriority!public!tests! !

