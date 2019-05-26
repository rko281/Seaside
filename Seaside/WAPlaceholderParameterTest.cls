"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #WAPlaceholderParameterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
WAPlaceholderParameterTest guid: (GUID fromString: '{af5c82c2-414f-457f-9b35-e68c193067c4}')!
WAPlaceholderParameterTest comment: ''!
!WAPlaceholderParameterTest categoriesForClass!Seaside-Tests-REST-Core! !
!WAPlaceholderParameterTest methodsFor!

testInstantiation	| match |	match := WAParameterMatch name: 'rev' value: '{1}' arguments: #().	self assert: (match isKindOf: WAPlaceholderParameterMatch).	self assert: match index = 1!

testMatches	| match |	match := WAParameterMatch name: 'rev' value: '{1}' arguments: #().	self assert: (match matchesName: 'rev' value: '58692').	self assert: (match matchesName: 'rev' value: 'a').	self deny: (match matchesName: 'revision' value: '58692')!

testNamedInstantiation	| match |	match := WAParameterMatch name: 'rev' value: '{put}' arguments: #('post' 'put' 'get').	self assert: (match isKindOf: WAPlaceholderParameterMatch).	self assert: match index = 2! !
!WAPlaceholderParameterTest categoriesFor: #testInstantiation!public!tests! !
!WAPlaceholderParameterTest categoriesFor: #testMatches!public!tests! !
!WAPlaceholderParameterTest categoriesFor: #testNamedInstantiation!public!tests! !

