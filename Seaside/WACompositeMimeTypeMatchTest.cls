"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WACompositeMimeTypeMatchTest
	instanceVariableNames: 'match'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WACompositeMimeTypeMatchTest guid: (GUID fromString: '{25c226e4-3f53-4f63-950a-6940a3fab5e9}')!
WACompositeMimeTypeMatchTest comment: ''!
!WACompositeMimeTypeMatchTest categoriesForClass!Seaside-Tests-REST-Core! !
!WACompositeMimeTypeMatchTest methodsFor!

setUp	match := WACompositeMimeTypeMatch matches: (Array with:		(WAMimeTypeMatch fromString: 'text/*'))!

testMatches	self assert: (match matches: (WAMimeType fromString: 'text/plain')).	self deny: (match matches: (WAMimeType fromString: 'application/json'))!

testPriorityFor	match := WACompositeMimeTypeMatch matches: (Array		with: (WAMimeTypeMatch fromString: 'application/*')		with: (WAMimeTypeMatch fromString: '*/*')).	self assert: (match priorityFor: (WAMimeType fromString: 'application/json')) = 2! !
!WACompositeMimeTypeMatchTest categoriesFor: #setUp!public!running! !
!WACompositeMimeTypeMatchTest categoriesFor: #testMatches!public!tests! !
!WACompositeMimeTypeMatchTest categoriesFor: #testPriorityFor!public!tests! !

