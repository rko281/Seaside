"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAOrPathMatchTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAOrPathMatchTest guid: (GUID fromString: '{86b62911-cc35-49c1-9d36-95265a69891f}')!
WAOrPathMatchTest comment: ''!
!WAOrPathMatchTest categoriesForClass!Seaside-Tests-REST-Core! !
!WAOrPathMatchTest methodsFor!

testInstantiation	| match |	match := WAOrPathMatch fromString: 'path' index: 1 arguments: #().	self assert: (match isKindOf: WAOrPathMatch).	self assert: match priority = 3!

testMatches	| match |	match := WAOrPathMatch fromString: '[path|parameters]' index: 1 arguments: #().	self assert: (match matches: 'path').	self assert: (match matches: 'parameters').	self deny: (match matches: 'poth').		match := WAOrPathMatch fromString: '[path|or|parameters]' index: 1 arguments: #().	self assert: (match matches: 'path').	self assert: (match matches: 'parameters').	self assert: (match matches: 'or').	self deny: (match matches: 'poth')! !
!WAOrPathMatchTest categoriesFor: #testInstantiation!public!tests! !
!WAOrPathMatchTest categoriesFor: #testMatches!public!tests! !

