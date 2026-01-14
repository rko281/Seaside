"Filed out from Dolphin Smalltalk"!

TestCase subclass: #WAExactParameterMatchTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

WAExactParameterMatchTest guid: (GUID fromString: '{4d5855c1-b130-4a77-9253-e9139aed28cd}')!

WAExactParameterMatchTest comment: ''!

!WAExactParameterMatchTest categoriesForClass!Seaside-Tests-REST-Core! !

!WAExactParameterMatchTest methodsFor!

testInstantiation	| match |	match := WAParameterMatch name: 'rev' value: '58692' arguments: #().	self assert: (match isKindOf: WAExactParameterMatch)!

testMatches	| match |	match := WAParameterMatch name: 'rev' value: '58692' arguments: #().	self assert: (match matchesName: 'rev' value: '58692').	self deny: (match matchesName: 'rev' value: 58692).	self deny: (match matchesName: 'rev' value: 'a').	self deny: (match matchesName: 'revision' value: '58692')! !

!WAExactParameterMatchTest categoriesForMethods!
testInstantiation!public!tests! !
testMatches!public!tests! !
!

