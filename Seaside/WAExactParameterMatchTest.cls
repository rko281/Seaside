"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAExactParameterMatchTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAExactParameterMatchTest guid: (GUID fromString: '{62f910b6-7324-4efa-be9a-8d5d300a21a9}')!
WAExactParameterMatchTest comment: ''!
!WAExactParameterMatchTest categoriesForClass!Seaside-Tests-REST-Core! !
!WAExactParameterMatchTest methodsFor!

testInstantiation	| match |	match := WAParameterMatch name: 'rev' value: '58692' arguments: #().	self assert: (match isKindOf: WAExactParameterMatch)!

testMatches	| match |	match := WAParameterMatch name: 'rev' value: '58692' arguments: #().	self assert: (match matchesName: 'rev' value: '58692').	self deny: (match matchesName: 'rev' value: 58692).	self deny: (match matchesName: 'rev' value: 'a').	self deny: (match matchesName: 'revision' value: '58692')! !
!WAExactParameterMatchTest categoriesFor: #testInstantiation!public!tests! !
!WAExactParameterMatchTest categoriesFor: #testMatches!public!tests! !

