"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAExactParameterMatchTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAExactParameterMatchTest guid: (GUID fromString: '{65c93d44-1b79-4e10-bf69-0cbeb104e4f9}')!
WAExactParameterMatchTest comment: ''!
!WAExactParameterMatchTest categoriesForClass!Seaside-Tests-REST-Core! !
!WAExactParameterMatchTest methodsFor!

testInstantiation	| match |	match := WAParameterMatch name: 'rev' value: '58692' arguments: #().	self assert: (match isKindOf: WAExactParameterMatch)!

testMatches	| match |	match := WAParameterMatch name: 'rev' value: '58692' arguments: #().	self assert: (match matchesName: 'rev' value: '58692').	self deny: (match matchesName: 'rev' value: 58692).	self deny: (match matchesName: 'rev' value: 'a').	self deny: (match matchesName: 'revision' value: '58692')! !
!WAExactParameterMatchTest categoriesFor: #testInstantiation!public!tests! !
!WAExactParameterMatchTest categoriesFor: #testMatches!public!tests! !

