"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAOrPathMatchTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAOrPathMatchTest guid: (GUID fromString: '{b5026a9a-a9d1-4cb4-8ac8-9b1bef60ec5f}')!

WAOrPathMatchTest comment: ''!

!WAOrPathMatchTest categoriesForClass!Seaside-Tests-REST-Core! !

!WAOrPathMatchTest methodsFor!

testInstantiation	| match |	match := WAOrPathMatch fromString: 'path' index: 1 arguments: #().	self assert: (match isKindOf: WAOrPathMatch).	self assert: match priority = 3!

testMatches	| match |	match := WAOrPathMatch fromString: '[path|parameters]' index: 1 arguments: #().	self assert: (match matches: 'path').	self assert: (match matches: 'parameters').	self deny: (match matches: 'poth').		match := WAOrPathMatch fromString: '[path|or|parameters]' index: 1 arguments: #().	self assert: (match matches: 'path').	self assert: (match matches: 'parameters').	self assert: (match matches: 'or').	self deny: (match matches: 'poth')! !

!WAOrPathMatchTest categoriesForMethods!
testInstantiation!public!tests! !
testMatches!public!tests! !
!

