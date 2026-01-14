"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WACompositeMimeTypeMatchTest
	instanceVariableNames: 'match'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WACompositeMimeTypeMatchTest guid: (GUID fromString: '{158e33b8-2e9a-49db-be5d-b1bd8a64aade}')!

WACompositeMimeTypeMatchTest comment: ''!

!WACompositeMimeTypeMatchTest categoriesForClass!Seaside-Tests-REST-Core! !

!WACompositeMimeTypeMatchTest methodsFor!

setUp	match := WACompositeMimeTypeMatch matches: (Array with:		(WAMimeTypeMatch fromString: 'text/*'))!

testMatches	self assert: (match matches: (WAMimeType fromString: 'text/plain')).	self deny: (match matches: (WAMimeType fromString: 'application/json'))!

testPriorityFor	match := WACompositeMimeTypeMatch matches: (Array		with: (WAMimeTypeMatch fromString: 'application/*')		with: (WAMimeTypeMatch fromString: '*/*')).	self assert: (match priorityFor: (WAMimeType fromString: 'application/json')) = 2! !

!WACompositeMimeTypeMatchTest categoriesForMethods!
setUp!public!running! !
testMatches!public!tests! !
testPriorityFor!public!tests! !
!

