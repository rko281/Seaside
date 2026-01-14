"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAExactPathMatchTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExactPathMatchTest guid: (GUID fromString: '{85f9005f-db18-4109-bd69-56b5e380ce08}')!

WAExactPathMatchTest comment: ''!

!WAExactPathMatchTest categoriesForClass!Seaside-Tests-REST-Core! !

!WAExactPathMatchTest methodsFor!

testInstantiation	| match |	match := WAPPathMatch fromString: 'path' index: 1 arguments: #().	self assert: (match isKindOf: WAExactPathMatch).	self assert: match priority = 3!

testMatches	| match |	match := WAPPathMatch fromString: 'path' index: 1 arguments: #().	self assert: (match matches: 'path').	self deny: (match matches: 'poth')! !

!WAExactPathMatchTest categoriesForMethods!
testInstantiation!public!tests! !
testMatches!public!tests! !
!

