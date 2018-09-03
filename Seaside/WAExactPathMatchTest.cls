"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAExactPathMatchTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAExactPathMatchTest guid: (GUID fromString: '{3d1f9889-d1e3-4068-a710-ec381706b8c8}')!
WAExactPathMatchTest comment: ''!
!WAExactPathMatchTest categoriesForClass!Seaside-Tests-REST-Core! !
!WAExactPathMatchTest methodsFor!

testInstantiation	| match |	match := WAPPathMatch fromString: 'path' index: 1 arguments: #().	self assert: (match isKindOf: WAExactPathMatch).	self assert: match priority = 3!

testMatches	| match |	match := WAPPathMatch fromString: 'path' index: 1 arguments: #().	self assert: (match matches: 'path').	self deny: (match matches: 'poth')! !
!WAExactPathMatchTest categoriesFor: #testInstantiation!public!tests! !
!WAExactPathMatchTest categoriesFor: #testMatches!public!tests! !

